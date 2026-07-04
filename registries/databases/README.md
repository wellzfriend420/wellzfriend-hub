# データベース台帳

データベースの目的、分類、責任、運用方針を管理する正本です。実データや接続情報は管理しません。[入力雛形](registry.yaml)をデータ管理責任者が変更時・四半期に確認します。

| 項目 | 必須 | 定義 |
|---|---|---|
| database_id | ○ | 不変ID `DB-NNNN` |
| name / purpose | ○ | 論理名 / 用途 |
| system_ids / app_ids | ○ | 利用対象ID |
| data_classification | ○ | `public`, `internal`, `confidential`, `restricted` |
| canonical_data_owner | ○ | データ正本を管理する役割 |
| logical_location | ○ | 秘密値を含まない論理参照先 |
| retention_policy / backup_policy | ○ | 保持削除 / バックアップ復元方針 |
| lifecycle_status | ○ | `proposed`, `active`, `migrating`, `retired` |
| owner_role / last_reviewed_on | ○ | 責任役割 / 最終確認日 |

サンプルは実在しません。接続文字列、ホスト、資格情報、実データ、顧客情報、秘密を保存しません。
