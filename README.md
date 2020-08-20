# README

# アプリ名
Study Memo

## アプリの概要
プログラミングに関する学んだ知識を、自分用のメモとして投稿できるアプリを作成しました

## 機能一覧
・deviseを用いたユーザー新規登録、ログイン機能全般<br>
・新規投稿機能<br>
・acts-as-taggable-onを用いた学んだ言語のタグ化<br>
・Rinkuを用いたURLのリンク化<br>
・kaminariを用いたページネーション機能<br>

## アプリを作った理由
自分がプログラミングの勉強を行う上で、学んだ知識をQiitaよりも気軽に残せるようなアプリが欲しいなと思ったのがきっかけです。 <br>
自分の中でQiitaは誰が見てもわかりやすく、きちんとした文章で書かないといけないという思いがあり、なかなか気軽に投稿することができずにいました。<br>
そこで、メモのようなラフなイメージのアプリを復習も兼ねて自分で作ってみようと思い、このアプリを作成するにいたりました。
<br>

## 工夫点
・なるべくシンプルでわかりやすい見た目を心がけました<br>
・何の言語に関する投稿なのかが一目でわかるようにしました<br>
・参考にしたURLは、別タブでリンクを開くようにしました

## 今後追加したい実装
・SNSのアカウントを利用したログイン機能<br>
・お気に入り機能<br>
・コメント機能<br>
・投稿の検索機能<br>

## 使用言語
ruby 2.5.1p57<br>
Rails 5.0.7.2<br>
MySQL<br>
Haml<br>
Scss<br>
JavaScript<br>
Github<br>
Heroku<br>
Visual Studio Code

# 接続先情報
URL https://my-study-app-fs.herokuapp.com/
### テスト用アカウント
  メールアドレス: test@test.com<br>
  パスワード: 1234567o

### 動作確認方法
・Chromeの最新版を利用してアクセスしてください。
ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続ください。<br>
・テストアカウントでログイン→トップページから新規投稿<br>
・確認後、ログアウトをお願いします<br>

## デモ
・ログイン画面<br>
![ログイン画面](https://github.com/fuka-sato/Study/blob/master/app/assets/images/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88%202020-08-11%2021.02.32.png)<br>
<br>
<br>
・トップページ<br>
![トップページ](https://github.com/fuka-sato/Study/blob/master/app/assets/images/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88%202020-08-10%2021.39.15.png)<br>
<br>
<br>
・マイページ<br>
![マイページ](https://github.com/fuka-sato/Study/blob/master/app/assets/images/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88%202020-08-11%2021.06.21.png)<br>
<br>
<br>
・新規投稿画面<br>
![新規投稿画面](https://github.com/fuka-sato/Study/blob/master/app/assets/images/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88%202020-08-11%2021.04.48.png)
<br>



# Study appDB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|password|string|null: false|
|email|string|null: false|
### Association
- has_many :posts

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|title|string|null: false|
|body|text|null: false|
|url|text|

### Association
- belongs_to :user
