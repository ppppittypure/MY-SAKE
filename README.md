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

- has_many :messages
- has_one  :ranking



## messages テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| title   | string | null: false |
| image |  | null: false |
| user_id  | references | null: false, foreign_key: true |

- belongs_to :user
- has_many   :comments

## ranking テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name | string | null: false |
| title | string | null: false |
| text | text | null: false |
| user_id  | references | null: false, foreign_key: true |

- belongs_to :user
- has_many :comments

##comments テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text | string | null: false |
| ranking_id  | references | null: false, foreign_key: true |
| message_id | references | null: false, foreign_key: true |

- belongs_to :ranking
- belongs_to :message