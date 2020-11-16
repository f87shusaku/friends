#　データベース設計

## users テーブル

| Column     | Type    | Options     |
| ---------- | ------- | ----------- |
| name       | string  | null: false |
| email      | string  | null: false |
| password   | string  | null: false |
| occupation | string  | null: false |
| age        | integer | null: false |

### Association
- has_one :target
- has_many :messages
- has_many :comments
- has_many :room_users
- has_many :rooms, through: :room_users

## targets テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| week    | string     | null: false                    |
| day     | string     | null: false                    |
| free    | string     | null: false                    |
| money   | integer    | null: false                    |
| user    | references | null: false, foreign_key: true |

### Association
- belongs_to :user

## rooms テーブル

| Column | Type       | Options     |
| ------ | ---------- | ----------- |
| name   | string     | null: false |
| title  | string     | null: false |

- has_many :room_users
- has_many :users, through: :room_users
- has_many :messages

## room_users　テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :room

## messages テーブル
| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| message | string     | null: false                    |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :rooms

## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| comment | text       | null: false                    |
| user    | references | null: false, foreign_key: true |

### Association
- belongs_to :user