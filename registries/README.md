# Registries

アプリ事業の管理対象に関する**正式台帳**です。各ディレクトリの `registry.yaml` が入力用の正本です。

| 台帳 | ID形式 | 入口 |
|---|---|---|
| システム台帳 | `SYS-NNNN` | [systems](systems/README.md) |
| アプリ台帳 | `APP-NNNN` | [apps](apps/README.md) |
| データベース台帳 | `DB-NNNN` | [databases](databases/README.md) |
| 機能台帳 | `FEAT-NNNNNN` | [features](features/README.md) |
| 顧客情報システム台帳 | `CIS-NNNN` | [customer-information-systems](customer-information-systems/README.md) |
| AIチーム名簿 | `AI-NNN` | [ai-team](ai-team/README.md) |
| リポジトリ台帳 | `REPO-NNNN` | [repositories](repositories/README.md) |
| Business Template Registry | `BT-NNNN` | [business-templates](business-templates/README.md) |

## 共通運用

1. 管理責任を持つ役割が重複を検索し、未使用のIDを採番する。
2. 名称変更後もIDを維持し、廃止IDは再利用しない。
3. 確定情報だけを `active` 等で登録し、検討段階は `proposed` とする。
4. 状態、管理責任、最終確認日を必須とし、少なくとも四半期ごとに見直す。
5. 廃止は行を削除せず `retired` 等へ変更し、後継IDと理由を残す。
6. 他台帳の対象は名称でなくIDで参照する。

## 絶対に保存しない情報

個人情報、顧客名・担当者名・住所・連絡先、契約・請求・利用履歴、実データ、DB接続文字列、パスワード、APIキー、秘密鍵、トークン、非公開認証情報。URLは秘密値を含まない論理参照またはリポジトリURLに限定します。
