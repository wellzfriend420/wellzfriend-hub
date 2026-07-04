# AIチーム名簿（AI Team Registry）

ウェルズフレンドで活動する**AIチームの構成員、役割、担当、連携、運用状態**を管理する正本です。AIサービスそのものの製品台帳ではありません。

- 正本: [registry.yaml](registry.yaml)
- 自動生成一覧: [AI-TEAM-LIST.md](AI-TEAM-LIST.md)
- 運営上の会社ルール: [第8章 AI運営](../../docs/operations-manual/08-ai-operations.md)

## 設計原則

- 1 AIメンバーを1レコードとして管理し、不変ID `AI-NNN` を主キーにする。
- 愛称・正式名称・提供元が変わってもAI IDは維持し、引退後も再利用しない。
- 担当アプリはアプリ台帳の `APP-NNNN`、連携AIは本名簿の `AI-NNN` で参照する。
- 具体的な権限は最小限とし、管理責任と更新者は個人名ではなく役割で記録する。
- 確定していない項目は推測せず、空配列または `確認中` とする。
- 一覧は正本YAMLから生成し、生成ファイルを直接編集しない。

## 項目定義

### 識別・基本情報

| 項目 | 必須 | 定義 |
|---|---|---|
| ai_id | ○ | 不変ID `AI-NNN` |
| nickname | ○ | AI愛称。変更可能 |
| official_name | ○ | サービス・モデル等の正式名称 |
| provider | ○ | 提供元組織 |
| role | ○ | チーム内の役割 |
| mission | ○ | チーム内で果たす使命 |
| responsibilities | ○ | 担当業務の配列 |
| strengths | ○ | 得意分野の配列 |
| weaknesses | ○ | 苦手分野・人の確認が必要な領域の配列 |
| tools | ○ | 主に利用するサービス・ツール名の配列。資格情報は禁止 |

### 運営情報

| 項目 | 必須 | 定義 |
|---|---|---|
| started_on | ○ | 利用開始日 `YYYY-MM-DD`。未確認時は `unknown` |
| usage_status | ○ | `active`（利用中）、`suspended`（休止）、`retired`（引退） |
| plan_name | ○ | 利用プラン名。料金・契約情報は記載しない |
| environment | ○ | 利用環境の一般名称 |
| connection_method | ○ | 接続方式の分類。URL、トークン、資格情報は禁止 |
| permission_level | ○ | `observe`, `draft`, `execute_limited`, `execute_approved` |

### 連携情報

| 項目 | 必須 | 定義 |
|---|---|---|
| app_ids | ○ | 担当アプリIDの配列。横断担当は空配列可 |
| collaborator_ai_ids | ○ | 連携するAI IDの配列 |
| document_references | ○ | Hub内または承認済み正本文書への参照配列 |
| readme_ai_reference | ○ | README_AIの保存場所または `not_applicable`, `planned` |

### 運用・統治情報

| 項目 | 必須 | 定義 |
|---|---|---|
| owner_role | ○ | 人間側の管理責任役割 |
| notes | - | 機密でない備考 |
| updated_on | ○ | レコード更新日 `YYYY-MM-DD` |
| updated_by_role | ○ | 更新した役割。個人名は禁止 |
| last_reviewed_on | ○ | 内容を確認した日 `YYYY-MM-DD` |

## 更新手順

1. 重複を確認し、新規メンバーには未使用のAI IDを採番する。
2. [registry.yaml](registry.yaml)を更新し、ID参照、状態、日付を確認する。
3. ワークスペースルートで `powershell -ExecutionPolicy Bypass -File automation/generate-ai-team-list.ps1` を実行する。
4. [AI-TEAM-LIST.md](AI-TEAM-LIST.md)の差分とHub検証結果を確認する。
5. 役割・担当・プラン・環境・連携・状態の変更時、および月次に見直す。

## 保存禁止

顧客情報、個人情報、会話ログ、プロンプト本文、契約・料金詳細、接続URL、アカウント名、DB接続情報、パスワード、APIキー、トークン、秘密鍵は保存しません。`connection_method` には「Web UI」「API」「ローカル実行」等の分類だけを記録します。

サンプルレコードは構造説明用で、実在するチームメンバーではありません。
