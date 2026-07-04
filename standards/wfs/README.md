# WFS（WellzFriend Standard）

ウェルズフレンドで開発する全システムの、開発・保守・AI引継ぎ・テンプレート化を統一する標準です。

- Current Version: **0.1**
- 状態: **approved**
- 管理責任: 開発標準管理責任者
- 承認責任: アプリ事業責任者
- 制定日: 2026-07-04
- 最終確認日: 2026-07-04
- 現行版本文: [WFS Ver.0.1](WFS_v0.1.md)
- 変更履歴: [CHANGELOG](CHANGELOG.md)
- Google Drive構成台帳: [drive-structure.yaml](drive-structure.yaml)
- Candidate一覧: [candidates.yaml](candidates.yaml)
- 未採用の改善提案: [proposals.md](proposals.md)

## 運用

1. 新規システムは現行版WFSを確認して設計する。
2. 正式採用済みルールとCandidate・提案を混在させない。
3. 実運用で効果が確認できた改善だけを、承認後に次Versionへ反映する。
4. 公開済みVersion本文は上書きせず、`WFS_v0.2.md` のように新しいVersionファイルを追加する。
5. 同じ変更で[CHANGELOG](CHANGELOG.md)へ追加・変更・廃止・移行影響を記録する。
6. `README.md` の現行Versionとリンクを新Versionへ更新する。
7. Hub検証を実行し、WFS本文・CHANGELOG・現行Versionの整合を確認する。
8. WFS本文、CHANGELOG、関連文書を一つのコミットにし、GitHubへPushする。
9. 例外は理由、影響、期限、承認役割を記録する。

## Version方針

- `0.x`: 実運用で育てている正式標準。正式採用した変更ごとに `0.1`、`0.2`、`0.3` と更新する。
- `1.0`: 全システムへ安定適用できる条件と運用実績が整った最初の安定版。
- 公開済み版は履歴として保持し、内容を後から書き換えない。
- 誤記修正でも意味が変わる場合は新Versionとする。意味を変えないリンク修正等はCHANGELOGへ記録する。

## 標準更新フロー

```text
改善提案・Candidateで検証
↓
採用判断と承認
↓
新しいWFS_vX.Y.mdを作成
↓
CHANGELOGと現行Versionを更新
↓
Hub検証
↓
Git commit / GitHubへPush
```

保存場所の詳細は[データ保存の基本原則](../data-storage-principles.md)を併せて適用します。両標準が競合する場合は、情報保護と正本分離についてより厳しい規則を優先し、標準管理責任者へ報告します。
