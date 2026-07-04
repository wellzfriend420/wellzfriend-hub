# 改善要望台帳

評価の結果、正式に採用された改善要望の**正本**です。GitHub Issues、問い合わせ、会議、AI提案等は受付手段であり、正本ではありません。[registry.yaml](registry.yaml)を改善管理責任者が採用判断・状態変更時に更新します。

| 項目 | 必須 | 定義 |
|---|---|---|
| improvement_id | ○ | 不変ID `IMP-NNNNNN` |
| title / problem / expected_outcome | ○ | 名称 / 課題 / 期待成果 |
| source_reference | ○ | 秘密を含まない受付元参照 |
| target_ids | ○ | APP/FEAT/SYS等の対象ID |
| priority | ○ | `critical`, `high`, `medium`, `low` |
| status | ○ | 下記状態 |
| decision / decision_reason | ○ | 採否 / 根拠 |
| owner_role / last_reviewed_on | ○ | 責任役割 / 最終確認日 |

状態は `accepted`, `planned`, `in_progress`, `verifying`, `completed`, `deferred`, `rejected`, `cancelled`。採用前候補は受付元で管理し、正式採用時にIDを付与します。却下・中止・完了も削除せず、IDを再利用しません。

顧客名、連絡先、個人情報、利用履歴、秘密情報を転記しません。サンプルは実在しません。
