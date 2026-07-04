# WFS Changelog

WFS（WellzFriend Standard）の正式Versionごとの変更内容を記録します。

## [Unreleased]

正式採用前の案は[改善提案](proposals.md)で管理し、この欄へ確定事項として記載しません。

## [0.1] - 2026-07-04

### Added

- WFS-001 開発・保存場所の役割
- WFS-002 Google Drive構成
- WFS-003 テンプレート運用
- WFS-004 命名規則
- WFS-005 開発フロー
- WFS-006 AI引継ぎ
- WFS-007 第1号モデル
- 部門別損益ダッシュボードを第1号Candidateとして登録

### Governance

- WFS Ver.0.1を正式採用
- 正式ルール、Candidate、未採用提案を分離管理
- Google Driveを `WellzFriend/Templates/Customers/Archive` に統一
- 資金繰り親テンプレートを `Templates/Cashflow App` に登録
- 部門別損益の親データを `TPL_部門別損益ダッシュボード_v0.1` に統一し、BT-0002へ登録
- 部門別損益ダッシュボードを独立GitHubリポジトリへ接続し、SYS-0002・APP-0002・REPO-0002を登録

[Unreleased]: ./proposals.md
[0.1]: ./WFS_v0.1.md
