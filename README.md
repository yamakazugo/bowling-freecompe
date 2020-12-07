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