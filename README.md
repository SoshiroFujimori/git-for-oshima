# Git for Oshima

## 概要
このプロジェクトは、ポータブルGitのセットアップ、クローン、プッシュ、およびクリーンアップを自動化するためのバッチスクリプトを提供します。

## 何ができるのか
- 学校で毎回OneDriveにログインして、ファイルをアップロードする必要がなくなります。
- 必要な手続きを一度済ませれば、以降はpush.batファイルを実行するだけで、GitHubにファイルをアップロードできます。

## 前提条件
- Windowsであること。
- ブラウザ上でGitHubにログインしていること。
- 自分のリポジトリをGitHubで作成していること。

## セットアップ手順
1. `setup.bat` を実行して、必要な依存関係をダウンロードし、Gitの設定を行います。
2. プロンプトに従ってGitHubの `ユーザー名` と `メールアドレス` を入力してください。

## リポジトリのクローン
1. `clone.bat` を実行して、クローンしたいGitリポジトリのURLを入力します。
2. `CredentialHelperSelector` が表示された場合、 `Always use this from now on` を選択してください。
3. 指定されたリポジトリが `repos` フォルダにクローンされます。

## リポジトリのプッシュ
1. `push.bat` を実行して、 `repos` フォルダ内のすべてのリポジトリをリモートにプッシュします。
2. `CredentialHelperSelector` が表示された場合、 `Always use this from now on` を選択してください。
3. 各リポジトリに対して自動的にコミットメッセージが追加され、プッシュされます。

## クリーンアップ
1. `cleanup.bat` を実行して、 `deps` フォルダと `repos` フォルダを削除します。
2. クリーンアップが完了したことを確認するメッセージが表示されます。

## 注意事項
- これらのスクリプトはWindows環境での使用を前提としています。
- スクリプトを実行する前に、インターネット接続が必要です。

## ライセンス
このプロジェクトはMITライセンスの下で提供されています。詳細は `LICENSE` ファイルを参照してください。