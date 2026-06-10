# DMZ戦術研究所 Obsidian Vault

COD DMZの戦術・武器・マップ研究・ケーススタディを体系化するObsidian Vaultです。

設計資料: `../構築/設計/DMZ戦術研究所_DeveloperPackage_v3.0.zip`

## 基本方針

- 記事名・本文は日本語
- frontmatterキーは英語
- タグは英語
- 未整理メモは `01_Inbox`
- 非公開メモは `02_Private`
- 公開可能記事は `80_Public` へ移動または複製
- 図解は `60_図解・マップ`
- AI投入用素材は `70_AI生成用素材`

## フォルダ構成

| フォルダ | 用途 |
|---|---|
| `00_ダッシュボード` | Dataviewによる研究状況の可視化 |
| `00_運用ルール` | 運用ルール・タグ辞書・データモデル |
| `01_Inbox` | 戦術研究チャットからの未整理メモ |
| `02_Private` | フレンド名・個人ログなど非公開情報 |
| `10_基礎理論` | 抽象度の高い基礎知識 |
| `20_マップ研究` | マップ・POI別の地形・危険分析 |
| `30_戦術研究` | 再利用可能な戦術記事 |
| `40_武器・装備研究` | 武器・ロードアウト評価 |
| `50_ケーススタディ` | 具体的プレイ事例 |
| `60_図解・マップ` | Canvas・画像・Mermaid |
| `70_AI生成用素材` | AIプロンプト・テンプレート |
| `80_Public` | 外部共有可能な完成記事 |
| `90_Archive` | 廃止・参考保管 |
| `Templates` | 記事作成テンプレート |
| `Assets` | 画像などの静的素材 |
| `docs` | GitHub Pages公開用（将来） |

## 推奨プラグイン

- **Dataview**（必須）
- Templater（任意）
- Calendar（任意）
- Excalidraw（任意）

## 現在の規模（2026-06-10）

| 種別 | 数 |
|---|---|
| マップ・POI記事 | 12 |
| 戦術・基礎理論 | 14 |
| 武器・ロードアウト | 4 |
| ケーススタディ | 5 |
| 公開記事（80_Public） | 7 |
| Canvas | 6 |

## 最初に行うこと

**→ 詳細は `セットアップ手順.md` を参照**

1. ObsidianでこのフォルダをVaultとして開く
2. Dataviewをインストール・有効化する
3. `00_ダッシュボード/戦術研究ダッシュボード.md` を開く
4. `検収チェックリスト.md` で確認する

## 記事作成フロー

```text
実プレイ → 戦術研究チャット → 01_Inbox
    → AI記事化（70_AI生成用素材/プロンプト）
    → 50_ケーススタディ / 30_戦術研究
    → 検証（status: review → verified）
    → 80_Public → docs（GitHub Pages）
```

## GitHub（GitHub Desktop）

1. `GITHUB_DESKTOP手順.md` に従いリポジトリを作成・Publish
2. 日常は Obsidian で編集 → GitHub Desktop でコミット・Push

## 関連ドキュメント

- `GITHUB_DESKTOP手順.md` — **GitHub Desktop セットアップ**
- `00_運用ルール/運用ルール.md` — ステータス・信頼度・公開判断
- `00_運用ルール/データモデル.md` — frontmatter仕様
- `60_図解・マップ/Canvas運用.md` — Canvasの使い方
- `80_Public/公開運用メモ.md` — Public移行ルール
- `GitHubPages_移行設計.md` — GitHub Pages構成
- `docs/development_log.md` — 構築・変更履歴
- `セットアップ手順.md` — **あなたが行う初期設定**
- `検収チェックリスト.md` — 完成度の確認
