# WellzFriend Hub

ウェルズフレンドの**アプリ事業本部の知識基盤**です。アプリのソースコードは置かず、100本以上のアプリを継続運営するための知識、設計、会社ルール、標準、台帳、雛形、AIチーム情報、改善ノウハウ、ロードマップを管理します。

## 管理原則

- 一つの情報に正本は一つだけとし、他所からはリンクで参照する。
- 管理対象には不変IDを付け、名称変更後も維持し、廃止IDを再利用しない。
- 確定情報と検討中情報を分け、状態・管理責任（個人名でなく役割）・最終確認日を持つ。
- 廃止情報は削除せず履歴として保管する。
- 会社ルールとツール固有の実現方法を混在させない。
- [データ保存の基本原則](standards/data-storage-principles.md)に従い、GitHub、Google Drive、各会社統合DB、ローカルの役割を分離する。
- 顧客情報、認証情報、秘密情報、接続情報をHubへ保存しない。

## 領域

| 領域 | 目的 | 入口 |
|---|---|---|
| governance | 意思決定・責任・正本の統治 | [案内](governance/README.md) |
| docs | アプリ事業の知識と運営文書 | [案内](docs/README.md) |
| registries | 管理対象の正式台帳 | [案内](registries/README.md) |
| portfolio | ロードマップ、改善、リスク | [案内](portfolio/README.md) |
| templates | 再利用可能な文書雛形 | [案内](templates/README.md) |
| standards | 全アプリ共通の標準 | [案内](standards/README.md) |
| catalogs | 知識・サービス等の索引 | [案内](catalogs/README.md) |
| automation | 検証・保守自動化 | [案内](automation/README.md) |
| archive | 廃止済み情報の履歴保管 | [案内](archive/README.md) |

## 主要文書

- [アプリ事業運営マニュアル](docs/operations-manual/README.md)
- [GitHub運用ガイド](docs/platform-guides/github/README.md)
- [台帳共通規約](registries/README.md)
- [文書標準](standards/documentation-standard.md)
- [Version管理標準](standards/version-management-standard.md)
- [リリース標準](standards/release-standard.md)
- [データ保存の基本原則](standards/data-storage-principles.md)

## 利用開始

1. 対象を該当台帳へ登録し、不変IDを採番する。
2. 雛形を複製して対象リポジトリまたは所定の正本保管先へ配置する。
3. 状態、管理責任、最終確認日を設定する。
4. 月次で台帳・改善・リスクを確認し、廃止時は履歴を残す。

機密情報を誤って記録した場合は追記で隠さず、アクセスを制限し、履歴を含む除去と認証情報の失効を直ちに担当役割へ依頼します。
