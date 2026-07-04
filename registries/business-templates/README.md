# Business Template Registry

全アプリの起点となる親テンプレート（マスター）を迷わず特定し、派生利用とVersionを追跡する正本です。[入力雛形](registry.yaml)をテンプレート管理責任者がVersion公開・状態変更・利用開始時に更新します。

| 項目 | 必須 | 定義 |
|---|---|---|
| business_template_id | ○ | 不変ID `BT-NNNN` |
| template_name / purpose | ○ | 名称 / 目的 |
| target_apps | ○ | 対象アプリの条件または種別 |
| current_version | ○ | 現在Version |
| status | ○ | `proposed`, `active`, `deprecated`, `retired` |
| github_repository | ○ | 親リポジトリ `owner/repository` |
| master_template_location | ○ | 親テンプレート保存場所 |
| readme_ai | ○ | 保存場所または `not_applicable`, `planned` |
| consuming_app_ids | ○ | 利用中のアプリID |
| owner_role / last_reviewed_on | ○ | 管理責任 / 最終確認日 |
| notes | - | 移行条件等の補足 |

親は一つに定め、コピー先を親として扱いません。旧Versionと廃止IDを削除・再利用しません。サンプルは実在しません。資格情報、顧客情報、秘密情報を保存しません。
