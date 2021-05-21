# FUEL_ECONOテーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :economies


## economies テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| fuel_economy | integer    | null: false                    |
| user         | references | null: false, foreign_key: true |

### Association

- belongs_to :user
