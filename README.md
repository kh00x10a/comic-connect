# テーブル設計

## users テーブル

| Column                          | Type        |  Options                          |
| ------------------------------- | ----------- | --------------------------------- |
| name                        | string      | null: false                       |
| email                           | string      | null: false, unique:true          |
| encrypted_password              | string      | null: false                       |

### Association

- has_many :comics
- has_many :comments
- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :messages


## comics テーブル

| Column                          | Type        |  Options                          |
| ------------------------------- | ----------- | --------------------------------- |
| title                           | string      | null: false                       |
| author                          | string      | null: false                       |
| illustrator                     | string      |                                   |
| genre_id                        | integer     | null: false                       |
| magazine_id                     | integer     | null: false                       |
| decade_id                       | integer     | null: false                       |
| publisher                       | string      |                                   |
| publication                     | string      |                                   |
| impression                      | string      |                                   |
| user                            | references  | null: false, foreign_key: true    |

### Association

- belongs_to :user
- has_many :comments
- belongs_to_active_hash :genre
- belongs_to_active_hash :magazine
- belongs_to_active_hash :decade


## comments テーブル

| Column                          | Type        |  Options                          |
| ------------------------------- | ----------- | --------------------------------- |
| content                         | string      | null: false                       |
| user                            | references  | null: false, foreign_key: true    |
| comic                           | references  | null: false, foreign_key: true    |

### Association

- belongs_to :user
- belongs_to :comic


## rooms テーブル

| Column                          | Type        |  Options                          |
| ------------------------------- | ----------- | --------------------------------- |
| name                            | string      | null: false                       |

### Association

- has_many :rooms_users
- has_many :users, through: :room_users
- has_many :messages

## room_users テーブル

| Column                          | Type        | Options                           |
| ------------------------------- | ----------- | --------------------------------- |
| user                            | references  | null: false, foreign_key: true    |
| room                            | references  | null: false, foreign_key: true    |

### Association

- belongs_to :room
- belongs_to :user


## messages テーブル

| Column                          | Type        | Options                           |
| ------------------------------- | ----------- | --------------------------------- |
| content                         | string      | null: false                       |
| user                            | references  | null: false, foreign_key: true    |
| room                            | references  | null: false, foreign_key: true    |

### Association

- belongs_to :room
- belongs_to :user