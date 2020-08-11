# README

## アプリ名
Study app

## アプリの概要
・プログラミングに関する学んだ知識を、文章で残すことが可能<br>
・学んだ言語をタグ化することが可能<br>
・言語ごとに投稿の絞り込みが可能<br>

## アプリを作った理由
自分がプログラミングの勉強を行う上で、学んだ知識をQiitaよりも気軽に残せるようなアプリが欲しいなと思ったのがきっかけです。
自分の中でQiitaは、誰が見てもわかりやすく、きちんとした文章で書かないとと思ってしまい気軽に投稿ができずにいました。そこで、メモのようなラフなイメージのアプリを復習も兼ねて自分で作ってみようと思い、作成にいたりました。
<br>

## 工夫点
・なるべくシンプルでわかりやすい見た目を心がけました<br>
・何の言語に関する投稿なのかが一目でわかるようにしました<br>
・参考にしたURLは、別タブでリンクを開くようにしました

## 今後追加したい実装
・SNSのアカウントを利用したログイン機能<br>
・お気に入りの機能と、お気に入りした投稿の一覧が見れるような機能<br>


## 使用言語
ruby 2.5.1p57
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

## デモ
![ログイン画面](./images/スクリーンショット 2020-08-10 21.39.15.png)<br>
<br>
![トップページ](./images/スクリーンショット 2020-08-11 21.02.32.png)
<br>
<br>
![マイページ](./images/スクリーンショット 2020-08-11 21.06.21.png)
<br>
<br>
![新規投稿画面](./images/スクリーンショット 2020-08-11 21.04.48.png)
<br>
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
