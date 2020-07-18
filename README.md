# README
# medical-is DB設計
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
|title|text|null: false|
|url|text|null: false|

### Association
- belongs_to :user


## Categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|language|string|null: false|

### Association
- belongs_to :user