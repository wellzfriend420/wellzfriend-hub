# 機能台帳

アプリ横断で機能の所在、責任、重複、状態を追跡する正本です。[入力雛形](registry.yaml)をプロダクト管理責任者が採用時・状態変更時に更新します。

| 項目 | 必須 | 定義 |
|---|---|---|
| feature_id | ○ | 不変ID `FEAT-NNNNNN` |
| name / purpose | ○ | 機能名 / 解決する課題 |
| app_ids | ○ | 実装・利用するアプリID |
| specification_reference | ○ | 機能仕様の正本参照 |
| lifecycle_status | ○ | `proposed`, `planned`, `development`, `active`, `deprecated`, `retired` |
| owner_role / last_reviewed_on | ○ | 責任役割 / 最終確認日 |

名称変更後もIDを維持し、廃止行を削除しません。サンプルは実在しません。利用者データ、顧客固有設定、秘密情報を保存しません。
