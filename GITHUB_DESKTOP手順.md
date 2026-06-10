# GitHub Desktop セットアップ手順

cat-contract-app と同様に、**ローカルフォルダ → GitHub** で管理します。

## 前提

- GitHub Desktop インストール済み
- GitHubアカウント: `murakumo2000`

---

## 手順1: リポジトリを作成する

1. **GitHub Desktop** を起動
2. メニュー **ファイル** → **新しいリポジトリを追加**（または `Ctrl+N`）
3. 次を入力:

| 項目 | 値 |
|---|---|
| 名前 | `dmz-tactical-lab` |
| 説明 | `COD DMZ 戦術研究ナレッジベース` |
| ローカルパス | `C:\Users\murak\OneDrive\ドキュメント\DMZ\戦術研究所` |
| README | **オフ**（既に Vault 内にあるため） |
| Git ignore | **なし**（Vault 内の `.gitignore` を使う） |
| ライセンス | なしでOK |

4. **リポジトリを作成** をクリック

> **注意**: ローカルパスは `戦術研究所` フォルダにし、作成後に **Vault だけ** を中身として使う方法もあります。  
> より簡単なのは下記「手順1-B」です。

### 手順1-B（おすすめ・Vaultフォルダをそのまま使う）

1. GitHub Desktop → **ファイル** → **ローカルリポジトリを追加**
2. **「選択」** をクリック
3. 次のフォルダを選ぶ（**`dmz-tactical-lab` ではなく `Vault`**）:
   ```
   C:\Users\murak\OneDrive\ドキュメント\DMZ\戦術研究所\Vault
   ```

> **注意**: `dmz-tactical-lab` という空フォルダが別にできている場合は使わない。  
> 記事データはすべて **`Vault` フォルダ** にあります。
4. 「このディレクトリは Git リポジトリではありません」と出たら  
   → **リポジトリを作成** をクリックして初期化
5. 名前は `dmz-tactical-lab` など

---

## 手順2: 初回コミット

1. 左の **変更** タブにファイル一覧が出る
2. 左下の **Summary** に例:
   ```
   Initial commit: DMZ戦術研究所 Vault
   ```
3. **コミット** をクリック

---

## 手順3: GitHubに公開（Publish）

1. 上部 **Publish repository**（公開する）をクリック
2. 設定:

| 項目 | 推奨 |
|---|---|
| 名前 | `dmz-tactical-lab` |
| 説明 | `COD DMZ tactical knowledge base` |
| 非公開にする | **オン**（最初は非公開推奨） |

3. **Publish repository** を実行

→ `https://github.com/murakumo2000/dmz-tactical-lab` が作成されます。

---

## 手順4: GitHub Pages を有効化（任意）

公開サイトを出すとき:

1. ブラウザで GitHub のリポジトリを開く
2. **Settings** → **Pages**
3. **Source**: Deploy from a branch
4. **Branch**: `main` → フォルダ **`/docs`**
5. **Save**

数分後: `https://murakumo2000.github.io/dmz-tactical-lab/` で公開記事が見られます。

---

## 日常の運用（cat-contract-app と同じ流れ）

```text
Obsidianで記事編集
    ↓
GitHub Desktop で変更を確認
    ↓
Summary を書いて「コミット」
    ↓
「Push origin」で GitHub に反映
```

---

## よくある質問

### `02_Private` は上がる？

`.gitignore` で中身は除外設定済み（READMEのみ追跡）。  
非公開リポジトリでも個人メモはローカルだけに留める想定です。

### Obsidian の設定は？

`.obsidian/workspace.json` は端末ごとに変わるため Git 対象外です。  
プラグイン設定（`community-plugins.json` 等）は共有されます。

### 公開記事だけ Web に出したい

`80_Public` の記事を `docs/` にコピーしてからコミット・Push。  
（一部はすでに同期済み）

---

## 困ったとき

- リポジトリが見つからない → パスが `Vault` フォルダか確認
- Push できない → GitHub Desktop でサインインしているか確認
- 詳細: `開き方ガイド.md` / `セットアップ手順.md`
