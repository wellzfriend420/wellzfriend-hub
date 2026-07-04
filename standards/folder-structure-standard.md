# 標準フォルダ構成

> 状態: approved / 管理責任: 開発標準管理責任者 / 最終確認日: 2026-07-04

各アプリの独立リポジトリは、技術に応じて調整しつつ次の責務を分離します。

```text
/
├─ README.md
├─ README_AI.md
├─ CHANGELOG.md
├─ docs/
│  ├─ design/
│  ├─ features/
│  ├─ database/
│  ├─ operations/
│  └─ incidents/
├─ src/
├─ tests/
├─ config/       # 秘密値を含まない設定例のみ
├─ scripts/
└─ .github/      # GitHubを利用する場合
```

生成物、依存物、秘密値、顧客データは格納しません。構成差異はREADMEに理由と探索方法を記載します。
