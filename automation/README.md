# Automation

Hubの品質を機械的に確認する自動化を管理します。自動化は正本を勝手に変更せず、検出結果を人が確認できる形で報告します。

Phase 1の検査対象:

- Markdown相対リンクの存在
- YAML構文
- 必須基本フォルダと主要文書の存在
- 禁止される秘密ファイルを追加しないこと

AIチーム一覧は[生成スクリプト](generate-ai-team-list.ps1)で、[AIチーム名簿](../registries/ai-team/registry.yaml)から再生成します。

[検証スクリプト](validate-hub.ps1)はワークスペースルートから実行します。将来GitHub Actionsへ接続する場合の設定は[GitHubガイド](../docs/platform-guides/github/actions-and-security.md)に従います。
