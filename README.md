MY SAKE
好みに合う日本酒を提案/発見する



# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| encrypted_password | string | null: false |
| name               | string | null: false |
| profile             | text   | null: false |
| preference_id      | string  | null: false |
| taste_id           | string   | null: false |
| flavor_id           | string   | null: false |

- has_many :comments
- has_one  :ranking





## ranking テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name | string | null: false |
| title | string | null: false |
| text | text | null: false |
| evaluation | float | null: false |
| user_id  | references | null: false, foreign_key: true |

- belongs_to :user
- has_many :comments
- has_many :likes


##comments  テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| comment | string | null: false |
| ranking_id  | references | null: false, foreign_key: true |
| user_id  | references | null: false, foreign_key: true |


- belongs_to :ranking
- belongs_to :user
- has_many :likes

##likes テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user_id | references | null: false,foreign_key: true |
| comment_id  | references | null: false, foreign_key: true |

- belongs_to :user
- belongs_to :ranking





