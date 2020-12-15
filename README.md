# Portfolio name: Time Competition

今回作成した背景に、前職からの付き合いのあるボーリング場でコロナ以降、地方の集客ができずにいる 中で、アカウントを一つとって好きな時間に一人で来ても楽しめる事はできないか？と提案受けて 作成した、現場の声を重視して作ったポートフォリオです。

# Description

1週間単位で、お一人様から好きな時間に来てアカウントを作って得点を登録する。 
順位や商品をだす事を想定しており店員さんが、情報の入力をする。

# Demo

*ユーザー管理機能：顧客のアカウント情報を管理する。
*ランキング機能：トップページに期間内のトップスコアラーを載せる。
*投稿, 詳細, 編集, 削除機能：顧客の投稿写真と成績の詳細をアップロードする。また店員さん意外は、スコアを編集できないようにしている。


# DB 設計

## users table

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| email              | string              | null: false             |
| password           | string              | null: false             |
| name               | string              | null: false             |
| profile_id         | integer             | null: false             |
| occupation_id      | integer             | null: false             |


### Association

* has_many :scores
* has_many :comments

## scores table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| schedule_id                         | integer    | null: false       |
| score                               | integer    | null: false       |
| user                                | references | foreign_key: true |


### Association

- belongs_to :user
- has_many :comments

## comments table

| Column      | Type       | Options           |
|-------------|------------|-------------------|
| text        | text       | null: false       |
| score       | references | foreign_key: true |
| user        | references | foreign_key: true |

### Association

- belongs_to :score
- belongs_to :user