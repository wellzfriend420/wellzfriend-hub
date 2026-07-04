param([string]$Root = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path)

$ErrorActionPreference = 'Stop'
$errors = [System.Collections.Generic.List[string]]::new()
$required = @('governance','docs','registries','portfolio','templates','standards','catalogs','automation','archive')
foreach ($name in $required) {
  if (-not (Test-Path -LiteralPath (Join-Path $Root "$name/README.md"))) { $errors.Add("Missing README: $name") }
}

$linkPattern = [regex]'\[[^\]]+\]\((?!https?://|mailto:|#)([^)#]+)(?:#[^)]+)?\)'
Get-ChildItem -LiteralPath $Root -Recurse -Filter '*.md' | ForEach-Object {
  $file = $_
  $text = Get-Content -LiteralPath $file.FullName -Raw -Encoding UTF8
  foreach ($match in $linkPattern.Matches($text)) {
    $relative = [Uri]::UnescapeDataString($match.Groups[1].Value)
    $target = [IO.Path]::GetFullPath((Join-Path $file.DirectoryName $relative))
    if (-not (Test-Path -LiteralPath $target)) { $errors.Add("Broken link: $($file.FullName) -> $relative") }
  }
}

# Validate the restricted YAML subset used by this Hub without external modules.
# Detect malformed indentation, keys, quotes, and inline lists.
Get-ChildItem -LiteralPath $Root -Recurse -Filter '*.yaml' | ForEach-Object {
  $yamlFile = $_
  $lineNumber = 0
  Get-Content -LiteralPath $yamlFile.FullName -Encoding UTF8 | ForEach-Object {
    $lineNumber++
    $line = $_
    if ($line -match "`t") { $errors.Add("YAML tab indentation: $($yamlFile.FullName):$lineNumber") }
    if ($line -match '^( *)\S') {
      $indent = $Matches[1].Length
      if (($indent % 2) -ne 0) { $errors.Add("YAML odd indentation: $($yamlFile.FullName):$lineNumber") }
    }
    $trimmed = $line.Trim()
    if ($trimmed -and -not $trimmed.StartsWith('#') -and $trimmed -notmatch '^(- )?[A-Za-z_][A-Za-z0-9_]*:\s*(.*)$') {
      $errors.Add("YAML unsupported or malformed line: $($yamlFile.FullName):$lineNumber")
    }
    if (([regex]::Matches($line, '(?<!\\)"').Count % 2) -ne 0) {
      $errors.Add("YAML unbalanced quote: $($yamlFile.FullName):$lineNumber")
    }
    if (([regex]::Matches($line, '\[').Count -ne [regex]::Matches($line, '\]').Count)) {
      $errors.Add("YAML unbalanced inline list: $($yamlFile.FullName):$lineNumber")
    }
  }
}

$idRules = @{
  system_id = '^SYS-[0-9]{4}$'; app_id = '^APP-[0-9]{4}$'
  database_id = '^DB-[0-9]{4}$'; feature_id = '^FEAT-[0-9]{6}$'
  ai_id = '^AI-[0-9]{3}$'; business_template_id = '^BT-[0-9]{4}$'
  improvement_id = '^IMP-[0-9]{6}$'; customer_system_id = '^CIS-[0-9]{4}$'
  repository_id = '^REPO-[0-9]{4}$'
}
$idDefinitionFolders = @{
  system_id = 'systems'; app_id = 'apps'; database_id = 'databases'
  feature_id = 'features'; ai_id = 'ai-team'; business_template_id = 'business-templates'
  improvement_id = 'improvements'; customer_system_id = 'customer-information-systems'
  repository_id = 'repositories'
}
$seenIds = @{}
Get-ChildItem -LiteralPath $Root -Recurse -Filter '*.yaml' | ForEach-Object {
  $yamlFile = $_
  $lineNumber = 0
  Get-Content -LiteralPath $yamlFile.FullName -Encoding UTF8 | ForEach-Object {
    $lineNumber++
    if ($_ -match '^\s+([a-z_]+_id):\s+([A-Z]+-[A-Z0-9-]+)\s*$' -and $idRules.ContainsKey($Matches[1])) {
      $key = $Matches[1]; $value = $Matches[2]
      $definitionFolder = $idDefinitionFolders[$key]
      if ($yamlFile.FullName -notlike "*\$definitionFolder\*.yaml") { return }
      if ($value -notmatch $idRules[$key]) { $errors.Add("Invalid ID: $($yamlFile.FullName):$lineNumber $value") }
      if ($seenIds.ContainsKey($value)) { $errors.Add("Duplicate ID definition: $value") } else { $seenIds[$value] = $yamlFile.FullName }
    }
  }
}

if ($errors.Count -gt 0) { $errors | ForEach-Object { Write-Error $_ }; exit 1 }
Write-Output 'Hub validation passed.'
