# Business Template Registry

全アプリの起点となる親テンプレート（マスター）を迷わず特定し、派生利用とVersionを追跡する正本です。[入力雛形](registry.yaml)をテンプレート管理責任者がVersion公開・状態変更・利用開始時に更新します。

| 項目 | 必須 | 定義 |
|---|---|---|
| business_template_id | ○ | 不変ID `BT-NNNN` |
| template_name / purpose | ○ | 名称 / 目的 |
| target_apps | ○ | 対象アプリの条件または種別 |
| current_version | ○ | 現在Version |
| status | ○ | `proposed`, `active`, `deprecated`, `retired` |
| github_repository | ○ | テンプレートの設計情報を管理するリポジトリ `owner/repository` |
| master_template_location | ○ | Google Drive上の親テンプレート実体への秘密値を含まない論理参照先 |
| readme_ai | ○ | `available`, `planned`, `not_applicable` の状態と保存場所 |
| consuming_app_ids | ○ | 利用中のアプリID |
| owner_role / last_reviewed_on | ○ | 管理責任 / 最終確認日 |
| notes | - | 移行条件等の補足 |

親は一つに定め、コピー先を親として扱いません。設計情報の正本はGitHub、利用する親テンプレート実体の正本はGoogle Driveとします。旧Versionと廃止IDを削除・再利用しません。サンプルは実在しません。共有用認証情報、顧客情報、秘密情報を保存しません。
