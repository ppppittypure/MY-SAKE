アプリケーション名    ｜   MY SAKE

アプリケーション概要   ｜  好みに合う日本酒を提案/発見する

URL  ｜    https://my-sake.onrender.com

テスト用アカウント   ｜    ttt@ttt  ｜   harutake552

利用方法        ｜       ユーザー登録後ログを追加し意見交換、AIも活用しオススメ機能で最高のJapanese sake体験を

アプリケーションを作成した背景    ｜    日本酒大好きで海外需要に乗じて再発見してもらうきっかけに

洗い出した要件  |    https://docs.google.com/spreadsheets/d/1GbInh08ieKfuW5-A9UNhXS-J1wW8Gu7GF-zX4BIIfJ0/edit#gid=0



実装した機能についての画像やGIFおよびその説明※  |  [![Image from Gyazo](https://i.gyazo.com/21535aeb6b05cfca56ef9a706b325fcb.gif)](https://gyazo.com/21535aeb6b05cfca56ef9a706b325fcb)



実装予定の機能  |  日本酒レビュー投稿機能/AIコンシェルジュ機能


データベース設計  |  [![Image from Gyazo](https://i.gyazo.com/dc9c257990e7baffe1da7275f3476141.png)](https://gyazo.com/dc9c257990e7baffe1da7275f3476141)



画面遷移図  |    [![Image from Gyazo](https://i.gyazo.com/0c892bda633ccd0c72a48ad8814430f1.png)](https://gyazo.com/0c892bda633ccd0c72a48ad8814430f1)



開発環境  |  Ruby   Ruby on Rails   JavaScript   MySQL   GitHub   Visual Studio Code




ローカルでの動作方法  |  localhost:3000でターミナルを使い起動


工夫したポイント    |     感覚的で酔っ払って研究したくなってもちゃんと目的にたどり着けるUI/UXを目指した


改善点    |        細かい評価機能とAI機能の搭載


制作時間      |         400時間

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
- has_many :likes





## ranking テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |

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

##likes テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user_id | references | null: false,foreign_key: true |
| ranking_id  | references | null: false, foreign_key: true |

- belongs_to :user
- belongs_to :ranking





