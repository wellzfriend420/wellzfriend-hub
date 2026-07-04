# Templates

各アプリやHub文書で再利用する雛形です。`{{...}}` を対象情報へ置換し、不要な章は理由を残して `該当なし` とします。雛形そのものを対象文書の正本にせず、各アプリの独立リポジトリ等へ複製して管理してください。

| 雛形 | 用途 |
|---|---|
| [README](README.template.md) | 人向けの入口 |
| [README_AI](README_AI.template.md) | AI向け作業境界 |
| [CHANGELOG](CHANGELOG.template.md) | Version別変更履歴 |
| [リリースノート](release-notes.md) | 利用者・運用者への変更説明 |
| [リリース確認表](release-checklist.md) | 公開可否確認 |
| [復旧計画](recovery-plan.md) | 障害・災害からの復旧 |
| [システム設計書](system-design.md) | システム全体設計 |
| [機能仕様書](feature-specification.md) | 機能単位の仕様 |
| [データベース設計書](database-design.md) | 論理・物理データ設計 |
| [運用手順書](operations-procedure.md) | 反復可能な運用作業 |
| [障害報告書](incident-report.md) | 事実・影響・再発防止 |

記入時は不変ID、状態、管理責任役割、最終確認日、正本参照を必ず設定します。顧客情報、個人情報、接続情報、秘密値を記入しません。
