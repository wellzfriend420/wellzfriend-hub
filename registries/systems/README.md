# システム台帳

複数アプリ・DB・外部要素からなる論理システムの正本一覧です。[入力雛形](registry.yaml)へ、システム管理責任者が登録・四半期確認します。

## 項目定義

| 項目 | 必須 | 定義 |
|---|---|---|
| system_id | ○ | 不変ID `SYS-NNNN` |
| name / purpose | ○ | 名称 / 事業上の目的 |
| app_ids / database_ids | ○ | 関連する台帳ID（なければ空配列） |
| lifecycle_status | ○ | 下記状態 |
| owner_role | ○ | 管理責任を持つ役割 |
| canonical_reference | ○ | 設計正本の論理参照先 |
| last_reviewed_on | ○ | `YYYY-MM-DD` |
| notes | - | 機密でない補足 |

状態: `proposed`（検討中）、`active`（運用中）、`suspended`（一時停止）、`retired`（廃止）。削除・ID再利用は禁止です。

サンプル行は構造説明用で実在対象ではありません。顧客情報、認証情報、接続情報、秘密情報は保存しません。
