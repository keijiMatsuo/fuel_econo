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
日頃の運転ではどれくらいの燃費なのか気になった。<br>
記録を残せば前回と比較しやすいと思った。

# DEMO
### トップページからユーザー登録 
![demo](https://gyazo.com/ac0c65a1e9e95703af5fd7e9ce85edc4/raw)
### 投稿ページから走行距離と給油量を入力
![demo](https://gyazo.com/10da83aa64d7112e13d0ec3ccdf9c52b/raw)

# 工夫したポイント
- 新しい燃費から順番に、最大4つまでを表示するようにした。
- 燃費を小数点第二位まで表示するようにした。

# 使用技術（開発環境）

## バックエンド
Ruby 2.6.5<br>
Ruby on Rails 6.0.3.7<br>
## データベース
Mysql 14.14
## ソース管理
GitHub, GitHubDesktop
## テスト
RSpec
## エディタ
VSCode

# 課題や今後実装したい機能
計算した値を折れ線グラフで表示したい。<br>
前回より値が悪かった場合は、その理由を入力できるようにしたい。

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
