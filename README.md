# README
# StudyappDB設計

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
- has_many :categories_posts
- has_many :categories, through: :categories_posts



## Categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- belongs_to :user
- has_many :posts, through: :categories_posts
- has_many :categories_posts


## categories_postsテーブル
|Column|Type|Options|
|------|----|-------|
|category_id|integer|null: false, foreign_key: true|
|post_id|integer|null: false, foreign_key: true|
- belongs_to :post
- belongs_to :category