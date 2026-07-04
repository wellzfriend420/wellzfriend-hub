# アプリ台帳

独立リポジトリで管理される全アプリの正本一覧です。[入力雛形](registry.yaml)へ、アプリ管理責任者が登録し、提供状態の変更時と四半期ごとに確認します。

| 項目 | 必須 | 定義 |
|---|---|---|
| app_id | ○ | 不変ID `APP-NNNN` |
| name / purpose | ○ | 表示名 / 利用者価値 |
| system_ids | ○ | 所属システムID |
| repository_id | ○ | リポジトリ台帳ID |
| business_template_ids | ○ | 利用する親テンプレートID |
| lifecycle_status | ○ | `proposed`, `development`, `active`, `maintenance`, `retired` |
| owner_role / last_reviewed_on | ○ | 責任役割 / 最終確認日 |
| notes | - | 機密でない補足 |

名称変更でIDを変えず、廃止時も行を残します。サンプルは実在しません。顧客・利用履歴・ストア認証情報・秘密情報を保存しません。
