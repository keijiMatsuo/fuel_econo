# アプリケーション名
FUEL-ECONO
# FUEL-ECONOとは
新規登録/ログインし、走行距離と給油量を入力すると、自動で燃費を計算するアプリです。
![demo](https://gyazo.com/ac0c65a1e9e95703af5fd7e9ce85edc4/raw)
![demo](https://gyazo.com/10da83aa64d7112e13d0ec3ccdf9c52b/raw)

--README編集中です。--



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

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| mileage | integer    | null: false                    |
| amount  | integer    | null: false                    |
| user    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
