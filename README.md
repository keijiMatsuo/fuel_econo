# アプリケーション名
FUEL-ECONO(フューエルエコノ)

# 概要
- 
- 走行距離と給油量を入力すると、燃費を計算します。
- 使い方は簡単で、新規登録もしくはログインして計算ページから数値を入力するだけです。
- とにかく簡単に作りました。
![demo](https://gyazo.com/ac0c65a1e9e95703af5fd7e9ce85edc4/raw)
![demo](https://gyazo.com/10da83aa64d7112e13d0ec3ccdf9c52b/raw)

## 開発環境
- Ruby 2.6.5<br>
- Ruby on Rails 6.0.3.7<br>
- Mysql 14.14

## 機能一覧
- ユーザー登録、ログイン機能(gem devise)

## アプリケーション情報
- URL: https://fuel-econo.herokuapp.com/<br>
- テストアカウント
  - メールアドレス: test@nenpi.com
  - パスワード: a11111

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
