# Version管理標準

> 状態: approved / 管理責任: リリース管理責任者 / 最終確認日: 2026-07-04

公開可能な成果物は `MAJOR.MINOR.PATCH` で管理します。

- MAJOR: 互換性のない変更
- MINOR: 後方互換のある機能追加
- PATCH: 後方互換のある修正

公開前は `0.y.z` を許可します。公開済みVersionの内容・識別子を上書き・再利用しません。各Versionを変更履歴、リリースノート、確認結果へ関連付けます。依存するテンプレートVersionを記録し、更新の自動追従は影響確認後に行います。

ツール上のタグ付け方法は[GitHubリリースガイド](../docs/platform-guides/github/releases-and-tags.md)で定めます。
