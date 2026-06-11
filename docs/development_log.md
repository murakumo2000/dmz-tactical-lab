# 開発ログ



## 2026-06-10（初期構築）



- Vault v2.0 展開、v3.0 受入基準対応

- 詳細: 上記セクション参照（初回セットアップ）



## 2026-06-10（記事拡充・公開整備）



### マップ研究（全5マップ）



- アル・マズラの基本行動、観測所周辺（既存）

- アシカ島の基本行動、灯台周辺（既存）

- ヴォンデルの基本行動、市街地中心部

- ビルディング21の基本行動、立体迷路エリア

- コシチェイの基本行動、研究所周辺（confidence: low・要検証）



### 戦術・基礎理論



- ソロ運用の基本、デュオ連携の基本、スクアッド連携の基本

- 脱出タイムラインの考え方

- 情報優先の原則（verified）

- 建物戦・岩場戦・初動判断・AI処理（verified化）



### 武器・ロードアウト



- Vaznev-9K（SMG）

- ソロ汎用ロードアウト例

- Templates/ロードアウトテンプレート.md



### ケーススタディ



- 灯台登攀中に撃たれたケース（Inboxより記事化）

- Inboxメモ → 90_Archive へ移動



### Canvas・Mermaid



- ヴォンデル_市街地関連図、ビルディング21_屋内戦関連図

- アシカ島_交戦リスクマップ更新（失敗ケース追加）

- Mermaid/初動判断フロー



### 公開（80_Public + docs/）



- 戦術6本 + マップ1本 = 公開計7本

- 80_Public/index.md、docs/index.md 更新



### 運用ドキュメント



- セットアップ手順.md（ユーザー作業ガイド）

- 検収チェックリスト.md

- 00_ダッシュボード/マップ研究インデックス.md

- ダッシュボードにヴォンデル・B21・ロードアウトクエリ追加



### トラブルシュート対応

- `Obsidianで開く.url` 追加（ワンクリック起動用）
- `開き方ガイド.md` 追加
- Vault内の ReadOnly 属性解除を試行
- Wordロックファイル（`~$セットアップ手順.md`）の削除を試行
- **Vault not found 修正**: URIの日本語パス誤エンコードを修正（ドキュメントの「キ」欠落）
- `Vaultを開く.bat` 追加（PowerShell経由で正しいURI起動）
- `obsidian.json` に DMZ Vault を登録

### GitHub Desktop 対応

- `GITHUB_DESKTOP手順.md` 追加
- `.gitignore` 更新（02_Private、Officeロック、Obsidian workspace）

### GitHub Pages・フォルダ整理

- `.github/workflows/pages.yml` 追加（Actions 自動デプロイ）
- `docs/_config.yml` 追加
- `GITHUB_PAGES手順.md` 追加
- 空の `dmz-tactical-lab/` フォルダを削除（旧リポジトリ置き場）

### ユーザー対応が必要な項目

- **GitHub Desktop で Push**（Pages ワークフロー含む）
- **採用方針: パターンA**（Public リポジトリ + GitHub Pages）
- ユーザー作業: Public 化 → Settings → Pages → GitHub Actions
- Obsidian + Dataview インストール
- コシチェイの実プレイ検証
- 画像素材追加


