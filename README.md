# テーブル設計

## users テーブル
| Column     | Type      | Options      |
|------------|-----------|--------------|
|name        | string    |null:false    |
|email       | string    |null:false    |
|password    | string    |null:false    |
|profile     | string    |null:false    |
|occupation  | string    |null:false    |
|position    | string    |null:false    |

### Association

- has_many :prototypes
- has_many :comments



## prototypes テーブル

| Column     | Type      | Options      |
|------------|-----------|--------------|
|user        | string    |null:false    |
|catch phrase| string    |null:false    |
|concept     | string    |null:false    |
|image       | image     |null:false    |

### Association

- belongs_to :users
- has_many :comments



# comments テーブル

| Column     | Type      | Options      |
|------------|-----------|--------------|
|user        | string    |null:false    |
|space  No   | string    |null:false    |
|text        | string    |null:false    |

### Association

- belongs_to :users
- belongs_to :prototypes