
# Achievefolio API

## API list
|エンドポイント|HTTPメソッド|説明|
|---|---|---|
|/pages/mypage|`GET`||
|/pages/users|`GET`||
|/posts|`POST`|「今日何をしましたか？」のところ。`post`と初期`comment`を作成|
|/comments|`POST`|`post`に対してコメントする|
|/approve|`PATCH|PUT`|`post`を承認する|
|/achieved|`POST`|〇月〇〇日をクリックしたら達成のやつ|
|/clip||あとで時間あったら|

## 共通事項
### Header
```
achievefolio-user-id: (Integer)
```
### 何かを達成したとき
```
{
  "user": {(User)},
  ...,
  "achieved": {
    "id": (Integer)
  }
}
```

## [API] Pages Mypage
### Request
```
/pages/mypage
```
### Reponse
```
{
  "user": { (User) },
  "drops": [
    ...(Drop)
  ],
  "achievements": [
    ...(Achievement)
  ],
  "posts": [
    ...(Post)
  ]
}
```
## [Object] User
```
{
  "id": (Integer),
  "name": (String),
  "role": (String) // "admin" or "general"
}
```

## [Object] Drop
```
{
  "count": (Integer),
  "year": (Integer),
  "month": (Integer),
  "date": (Integer),
  "new": (Boolean) // 今まででコップに注がれるアニメーションを見たことがあるかどうか
}
```

## [Object] Achievement
```
{
  "id": (Integer),
  "type": (String),
  "achieved": (Boolean),
  "icon": (String),
  "secret": (Boolean),
  "description": (String)
}
```

## [Object] Post
```
{
  "id": (Integer),
  "comments": [
    ...(Comment)
  ],
  "approved": (Boolean),
  "mine": (Boolean) //自分のPostかどうか
}
```
