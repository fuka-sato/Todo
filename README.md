# README

# アプリ名
Study app

## アプリの概要
学んだプログラミングの知識を、アウトプットするためのアプリを作成しました

## 接続先情報
URL https://my-study-app-fs.herokuapp.com/
・テスト用アカウント
  メールアドレス: test@test.com
  パスワード: 1234567o

## デモ
![トップページ](https://github.com/fuka-sato/Study/blob/master/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88%202020-08-10%2021.39.15.png)


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
