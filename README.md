# Git for Oshima

## 概要
このプロジェクトは、[ポータブルGit](https://git-scm.com/downloads/win)のセットアップと、ポータブルGitを用いてリポジトリの同期をするバッチスクリプトを提供します。

## 前提条件
- Windowsであること。
- ブラウザ上でGitHubにログインしていること。
- 自分のリポジトリをGitHubで作成していること。

## セットアップ手順
1. `setup.bat` を実行して、必要な依存関係をダウンロードし、Gitの設定を行います。
2. プロンプトに従ってGitHubの `ユーザー名` と `メールアドレス` を入力してください。

## リポジトリの取得
1. `clone.bat` を実行して、取得したいGitリポジトリのURLを入力します。
2. `CredentialHelperSelector` が表示された場合、 `Always use this from now on` を選択してください。
3. 指定されたリポジトリが `repos` フォルダに取得されます。

## リポジトリの同期
1. `sync.bat` を実行して、 `repos` フォルダ内の全てのリポジトリを最新の状態に更新します。
2. `CredentialHelperSelector` が表示された場合、 `Always use this from now on` を選択してください。
3. ローカルでリポジトリに対する変更があれば、それはGitHubに反映されます。
4. 一つのファイルに対し、GitHubとローカルの両方で変更がある場合、 `sync.bat` は機能しません（コンフリクト）。その場合は、手動で解決してください。

## クリーンアップ
1. `cleanup.bat` を実行して、 `deps` フォルダと `repos` フォルダを削除します。
2. クリーンアップが完了したことを確認するメッセージが表示されます。

## ライセンス
このプロジェクトはMITライセンスの下で提供されています。詳細は `LICENSE` ファイルを参照してください。