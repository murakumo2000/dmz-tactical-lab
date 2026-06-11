# GitHub Pages セットアップ手順（パターンA: 公開リポジトリ）

採用方針: **リポジトリを Public にし、GitHub Pages で公開する**

公開URL:

```
https://murakumo2000.github.io/dmz-tactical-lab/
```

## 公開範囲の整理

| 場所 | 誰が見られるか | 内容 |
|---|---|---|
| GitHub リポジトリ | インターネット上の誰でも | コミット済みの全ファイル（下書き・ケース含む） |
| Pages サイト（上記URL） | インターネット上の誰でも | **`docs/` の公開記事のみ** |
| `02_Private/` | ローカルのみ | `.gitignore` で GitHub に上がらない |

---

## 手順1: 最新を Push（済んでいればスキップ）

GitHub Desktop で **Push origin**

---

## 手順2: リポジトリを Public にする

1. ブラウザで開く:  
   https://github.com/murakumo2000/dmz-tactical-lab/settings
2. ページ最下部 **Danger Zone**
3. **Change repository visibility** → **Change visibility**
4. **Make public** を選択し、リポジトリ名を入力して確認

---

## 手順3: Pages を有効化

1. 同じ Settings → 左メニュー **Pages**
2. **Build and deployment** → **Source**: **GitHub Actions**
3. **Actions** タブを開く  
   https://github.com/murakumo2000/dmz-tactical-lab/actions
4. **Deploy GitHub Pages** が緑（成功）になるまで待つ（初回は数分）

> ワークフローが走らない場合: Actions タブで **Deploy GitHub Pages** → **Run workflow** を手動実行

---

## 手順4: 公開サイトを確認

`https://murakumo2000.github.io/dmz-tactical-lab/`

戦術・マップの記事一覧が表示されれば完了。

---

## 日常の更新フロー

```text
Obsidian で記事編集
    ↓
公開する記事は 80_Public に配置
    ↓
docs/ に同期（tactics / maps など）
    ↓
GitHub Desktop でコミット・Push
    ↓
Actions が自動デプロイ（数分後にサイト反映）
```

## 個人メモの扱い

- フレンド名・個人ログ → **`02_Private/`** にのみ書く（Git に上がらない）
- 公開したくない下書き → `status: draft` のまま **`docs/` にコピーしない**
