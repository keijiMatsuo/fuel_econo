# アプリケーション名
FUEL-ECONO(フューエルエコノ)

# 概要
ユーザー登録を行い、走行距離と給油量を入力すると燃費を計算します。

# 本番環境
URL: https://fuel-econo.herokuapp.com/<br>

テストアカウント
  - メールアドレス: test@nenpi.com
  - パスワード: a11111

# 制作背景（意図）
日頃どれくらいの燃費なのか気になった。<br>


# DEMO
![demo](https://gyazo.com/ac0c65a1e9e95703af5fd7e9ce85edc4/raw)
![demo](https://gyazo.com/10da83aa64d7112e13d0ec3ccdf9c52b/raw)

# 工夫したポイント
- 新しい燃費から順番に、最大4つまでを表示するようにした。
- 燃費を小数点第二位まで表示するようにした。

# 使用技術（開発環境）
- Ruby 2.6.5<br>
- Ruby on Rails 6.0.3.7<br>
- Mysql 14.14

## 機能一覧
- ユーザー登録、ログイン機能(gem devise)


# DB設計

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
