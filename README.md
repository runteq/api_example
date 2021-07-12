# 環境構築
```
$ docker-compose up -d
$ docker-compose run --rm web rails db:seed
```

ベースURLは http://localhost:5000

# ユーザーログイン
## エンドポイント
`POST /api/session`

## リクエストパラメータ
```
{ session: { email: "dyson@example.com", password: "password } } 
```
## レスポンス例
```
{
    "user": {
        "id": 1,
        "name": "dysondyson",
        "email": "dyson@example.com",
        "introduction": "aaaa\n\nbbbb",
        "avatar_url": "/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBDQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6982770ee4099a3a4e87efb51812bae09976e6fe/1620124382",
        "tags": [
            {
                "id": 1,
                "name": "tag_name_1"
            },
            {
                "id": 2,
                "name": "tag_name_2"
            }
        ],
        "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ.juCNrz8Xf_HoMv5oUYZayywjaTq9nOEkavzmmYLe8UY"
    }
} 
```

# ユーザーログイン
## エンドポイント
`POST /api/session`

## リクエストパラメータ
```
{ session: { email: "dyson@example.com", password: "password } } 
```
## レスポンス例
```
{
    "user": {
        "id": 1,
        "name": "dysondyson",
        "email": "dyson@example.com",
        "introduction": "aaaa\n\nbbbb",
        "avatar_url": "/rails/active_storage/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBDQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6982770ee4099a3a4e87efb51812bae09976e6fe/1620124382",
        "tags": [
            {
                "id": 1,
                "name": "tag_name_1"
            },
            {
                "id": 2,
                "name": "tag_name_2"
            }
        ],
        "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ.juCNrz8Xf_HoMv5oUYZayywjaTq9nOEkavzmmYLe8UY"
    }
} 
```

# ポスト一覧
## エンドポイント
`GET /api/microposts`
## リクエストパラメータ
特になし

## レスポンス例
```
{
    "microposts": [
        {
            "id": 101,
            "content": "fdsfasfsafadsf",
            "created_at": "2021-07-12T06:14:09.589Z",
            "updated_at": "2021-07-12T06:14:09.589Z",
            "user": {
                "id": 1,
                "name": "Stuart O'Connell II",
                "email": "user+1@example.com",
                "introduction": "[\"Nobis tempore eaque.\", \"Ea eos maxime.\", \"Itaque praesentium voluptas.\"]",
                "avatar_url": "https://placehold.jp/300x300.png"
            }
        },
        {
            "id": 100,
            "content": "MyText",
            "created_at": "2021-07-12T06:06:40.874Z",
            "updated_at": "2021-07-12T06:06:40.874Z",
            "user": {
                "id": 10,
                "name": "Mr. Cletus Feil",
                "email": "user+10@example.com",
                "introduction": "[\"Distinctio dolor quia.\", \"Ut dignissimos ut.\", \"Eos omnis aut.\"]",
                "avatar_url": "https://placehold.jp/300x300.png"
            }
        },
        {
            "id": 99,
            "content": "MyText",
            "created_at": "2021-07-12T06:06:40.870Z",
            "updated_at": "2021-07-12T06:06:40.870Z",
            "user": {
                "id": 10,
                "name": "Mr. Cletus Feil",
                "email": "user+10@example.com",
                "introduction": "[\"Distinctio dolor quia.\", \"Ut dignissimos ut.\", \"Eos omnis aut.\"]",
                "avatar_url": "https://placehold.jp/300x300.png"
            }
        },
        {
            "id": 98,
            "content": "MyText",
            "created_at": "2021-07-12T06:06:40.866Z",
            "updated_at": "2021-07-12T06:06:40.866Z",
            "user": {
                "id": 10,
                "name": "Mr. Cletus Feil",
                "email": "user+10@example.com",
                "introduction": "[\"Distinctio dolor quia.\", \"Ut dignissimos ut.\", \"Eos omnis aut.\"]",
                "avatar_url": "https://placehold.jp/300x300.png"
            }
        },
        {
            "id": 97,
            "content": "MyText",
            "created_at": "2021-07-12T06:06:40.863Z",
            "updated_at": "2021-07-12T06:06:40.863Z",
            "user": {
                "id": 10,
                "name": "Mr. Cletus Feil",
                "email": "user+10@example.com",
                "introduction": "[\"Distinctio dolor quia.\", \"Ut dignissimos ut.\", \"Eos omnis aut.\"]",
                "avatar_url": "https://placehold.jp/300x300.png"
            }
        },
        {
            "id": 96,
            "content": "MyText",
            "created_at": "2021-07-12T06:06:40.860Z",
            "updated_at": "2021-07-12T06:06:40.860Z",
            "user": {
                "id": 10,
                "name": "Mr. Cletus Feil",
                "email": "user+10@example.com",
                "introduction": "[\"Distinctio dolor quia.\", \"Ut dignissimos ut.\", \"Eos omnis aut.\"]",
                "avatar_url": "https://placehold.jp/300x300.png"
            }
        },
        {
            "id": 95,
            "content": "MyText",
            "created_at": "2021-07-12T06:06:40.856Z",
            "updated_at": "2021-07-12T06:06:40.856Z",
            "user": {
                "id": 10,
                "name": "Mr. Cletus Feil",
                "email": "user+10@example.com",
                "introduction": "[\"Distinctio dolor quia.\", \"Ut dignissimos ut.\", \"Eos omnis aut.\"]",
                "avatar_url": "https://placehold.jp/300x300.png"
            }
        },
        {
            "id": 94,
            "content": "MyText",
            "created_at": "2021-07-12T06:06:40.850Z",
            "updated_at": "2021-07-12T06:06:40.850Z",
            "user": {
                "id": 10,
                "name": "Mr. Cletus Feil",
                "email": "user+10@example.com",
                "introduction": "[\"Distinctio dolor quia.\", \"Ut dignissimos ut.\", \"Eos omnis aut.\"]",
                "avatar_url": "https://placehold.jp/300x300.png"
            }
        },
        {
            "id": 93,
            "content": "MyText",
            "created_at": "2021-07-12T06:06:40.844Z",
            "updated_at": "2021-07-12T06:06:40.844Z",
            "user": {
                "id": 10,
                "name": "Mr. Cletus Feil",
                "email": "user+10@example.com",
                "introduction": "[\"Distinctio dolor quia.\", \"Ut dignissimos ut.\", \"Eos omnis aut.\"]",
                "avatar_url": "https://placehold.jp/300x300.png"
            }
        },
        {
            "id": 92,
            "content": "MyText",
            "created_at": "2021-07-12T06:06:40.837Z",
            "updated_at": "2021-07-12T06:06:40.837Z",
            "user": {
                "id": 10,
                "name": "Mr. Cletus Feil",
                "email": "user+10@example.com",
                "introduction": "[\"Distinctio dolor quia.\", \"Ut dignissimos ut.\", \"Eos omnis aut.\"]",
                "avatar_url": "https://placehold.jp/300x300.png"
            }
        }
    ],
    "meta": {
        "total_pages": 11,
        "total_count": 101,
        "current_page": 1
    }
} 
```

# ポスト作成
## エンドポイント
`POST /api/microposts`
## リクエストパラメータ
### Authorizationヘッダー
Bearer {token}
### ボディ
```
{ micropost: { content: "foo" } }
```

## レスポンス例
```bigquery
{
    "micropost": {
        "id": 102,
        "content": "foo",
        "created_at": "2021-07-12T06:17:47.606Z",
        "updated_at": "2021-07-12T06:17:47.606Z",
        "user": {
            "id": 1,
            "name": "Stuart O'Connell II",
            "email": "user+1@example.com",
            "introduction": "[\"Nobis tempore eaque.\", \"Ea eos maxime.\", \"Itaque praesentium voluptas.\"]",
            "avatar_url": "https://placehold.jp/300x300.png"
        }
    }
}
```
