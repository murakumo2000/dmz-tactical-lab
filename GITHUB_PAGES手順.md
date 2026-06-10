# GitHub Pages セットアップ手順

公開URL（設定完了後）:

```
https://murakumo2000.github.io/dmz-tactical-lab/
```

## 手順1: 変更を Push する

GitHub Desktop で次が含まれることを確認して Push:

- `.github/workflows/pages.yml`
- `docs/_config.yml`

## 手順2: GitHub で Pages を有効化

1. ブラウザでリポジトリを開く  
   `https://github.com/murakumo2000/dmz-tactical-lab`
2. **Settings** → **Pages**
3. **Build and deployment** の **Source** を **GitHub Actions** に変更

> 初回 Push 後、Actions タブに `Deploy GitHub Pages` ワークフローが表示されます。

## 手順3: デプロイ確認

1. **Actions** タブ → 最新のワークフローが緑（成功）か確認
2. **Settings** → **Pages** に表示される URL を開く
3. トップページに戦術・マップの記事一覧が表示されればOK

## 公開記事の更新フロー

```text
80_Public に記事を追加・更新
    ↓
docs/ 配下に同期（tactics / maps など）
    ↓
GitHub Desktop でコミット・Push
    ↓
Actions が自動デプロイ（数分）
```

## 代替: ブランチ公開（Actions を使わない場合）

Settings → Pages → Source: **Deploy from a branch**  
Branch: `main` / Folder: **`/docs`**

この場合は `docs/_config.yml` で Jekyll ビルドされます。
