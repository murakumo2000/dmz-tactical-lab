# GitHub Pages移行設計

## 方針

Obsidian Vaultを原本とし、公開可能記事のみ `docs/` 経由でGitHub Pagesへ反映する。

## 公開対象

- `80_Public` の記事
- 公開可と判断した画像（`docs/assets/`）
- 公開用 `docs/index.md`

## 非公開対象

- `01_Inbox`
- `02_Private`
- 検証前ケース（`status: draft` / `review`）
- 個別プレイログ
- フレンド名を含む記事

## リポジトリ構成（推奨）

```text
dmz-tactical-lab/
├── docs/                  ← GitHub Pages 公開ルート
│   ├── index.md
│   ├── tactics/
│   ├── maps/
│   ├── weapons/
│   ├── case-studies/
│   └── assets/
├── Vault/                 ← Obsidian原本（本フォルダ）
├── _config.yml
└── README.md
```

## 公開判定

以下をすべて満たす記事のみ移行する。

- `status` = `published` または `verified`
- `confidence` = `medium` 以上
- 個人名・フレンド名なし
- 未確認事項が断定されていない
- 画像・マップに非公開情報が含まれていない

## 移行手順

1. `80_Public` に記事を配置する
2. `公開前レビュープロンプト` でレビューする
3. `docs/` 配下の適切なフォルダへコピーする
4. frontmatterの内部リンクを公開用パスに調整する
5. GitHub Pagesでビルド・確認する

## 初期公開方針

最初は非公開GitHubリポジトリで管理する。
公開できる品質になった記事だけ `docs/` へ反映する。
