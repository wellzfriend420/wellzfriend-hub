# 顧客情報システム台帳

顧客情報そのものではなく、各社の統合データベースを正本とする**管理情報だけ**を記録します。[入力雛形](registry.yaml)を情報管理責任者が変更時・四半期に確認します。

| 項目 | 必須 | 定義 |
|---|---|---|
| customer_system_id | ○ | 不変管理ID `CIS-NNNN` |
| company_scope | ○ | 対象会社（会社区分・社内管理コード。顧客名ではない） |
| canonical_database_reference | ○ | 統合DBの秘密値を含まない論理参照先 |
| owner_role | ○ | 管理責任を持つ役割 |
| app_ids | ○ | 利用アプリID |
| data_classification | ○ | `internal`, `confidential`, `restricted` |
| retention_and_deletion_policy | ○ | 方針または正本文書参照 |
| backup_policy | ○ | 方針または正本文書参照 |
| lifecycle_status | ○ | `proposed`, `active`, `migrating`, `retired` |
| last_reviewed_on | ○ | 最終確認日 |

## 保存禁止

顧客名、担当者名、住所・連絡先、契約内容、請求情報、利用履歴、個人情報、実データ、DB接続情報、パスワード、APIキー、秘密鍵。サンプル値は実在する会社・顧客を示しません。
