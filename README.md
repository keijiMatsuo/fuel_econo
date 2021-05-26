# アプリケーション名
FUEL-ECONO(フューエルエコノ)

# FUEL-ECONOとは
走行距離と給油量を入力すると、燃費を計算します。
使い方は簡単で、新規登録もしくはログインして計算ページから数値を入力するだけです。
![demo](https://gyazo.com/ac0c65a1e9e95703af5fd7e9ce85edc4/raw)
![demo](https://gyazo.com/10da83aa64d7112e13d0ec3ccdf9c52b/raw)

## アプリケーション情報
URL: https://fuel-econo.herokuapp.com/
テストアカウント

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
