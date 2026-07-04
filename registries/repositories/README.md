# リポジトリ台帳

Hubおよび各アプリの独立GitHubリポジトリを追跡する正本です。ソースコード自体はHubへ置きません。[入力雛形](registry.yaml)をリポジトリ管理責任者が作成・移管・可視性変更・アーカイブ時に更新します。

| 項目 | 必須 | 定義 |
|---|---|---|
| repository_id | ○ | 不変ID `REPO-NNNN` |
| name / purpose | ○ | リポジトリ名 / 用途 |
| github_repository | ○ | 秘密値を含まない `owner/repository` |
| app_ids / template_ids | ○ | 関連台帳ID |
| visibility | ○ | `private`, `internal`, `public` |
| lifecycle_status | ○ | `proposed`, `active`, `archived`, `transferred` |
| owner_role / last_reviewed_on | ○ | 責任役割 / 最終確認日 |

GitHub設定方法は[GitHub運用ガイド](../../docs/platform-guides/github/README.md)を参照します。資格情報、デプロイキー、Webhook secret、顧客情報を保存しません。サンプルURLは実在を示しません。
