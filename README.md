# DB 設計

## users table

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| email              | string              | null: false             |
| password           | string              | null: false             |
| nickname           | string              | null: false             |
| profile            | text                | null: false             |
| occupation         | text                | null: false             |


### Association

* has_many :scores
* has_many :comments

## scores table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| title                               | string     | null: false       |
| score                               | integer    | null: false       |
| ranking                             | integer    | null: false       |
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