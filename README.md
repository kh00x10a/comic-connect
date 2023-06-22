# アプリケーション名
Comic Connect

# アプリケーション概要
読んだ漫画の情報を投稿し、ユーザーが投稿した漫画の情報を閲覧、それに対しコメントを投稿することができる。また、チャットルーム機能を設けることで、同じ趣味のユーザー同士でコミュニケーションをとることができる。

# URL
https://comicconnect.onrender.com

# テスト用アカウント
・Basic認証パスワード：2222  
・Basic認証ID：admin  
・メールアドレス：hoge@hoge  
・パスワード：aaaaaa11

# 利用方法

## 漫画投稿
1.トップページ（一覧ページ）のヘッダーから新規登録を行う  
2.ヘッダーにあるactionのボタンにマウスのカーソルを合わせて、新規投稿のボタンが表示されたら、クリックして新規投稿ページに遷移する  
3.新規投稿ページにて、漫画の情報（タイトル、原作、作者、ジャンル、カテゴリー、年代、出版社、掲載誌、一言感想）を入力し投稿する

## コメント投稿
1.ユーザーのログインをした状態で、トップページ（一覧ページ）に投稿された漫画の画像をクリックし投稿された漫画の詳細ページに遷移する  
2.漫画の詳細ページにあるコメント投稿フォームにコメントを入力し投稿する

## ユーザー同士でチャットをする
1.ユーザーのログインをした状態で、トップページ（一覧ページ）のヘッダーにあるactionボタンにマウスのカーソルを合わせて、チャットルームのボタンが表示されたら、クリックしてチャットルームのページに遷移する  
2.チャットルームのサイドバーにあるチャットを作成するのボタンをクリックして、チャットルームの新規作成ページに遷移する  
3.チャットルーム名とチャットメンバーを入力し、ルームを作成する  
4.サイドバーに載っているチャットルーム名をクリックして、チャットルームを開く  
5.チャットルームにあるメッセージ投稿フォームにメッセージを入力し投稿する

# アプリケーションを作成した背景
漫画を読むのが趣味である自分が新しく読む漫画を探す際に、自分の好みの漫画を探すのが難しいと感じることがあった。読む漫画の系統が同じ人が読んだ漫画なら自分の好みの漫画であること多く、新しく読みたい漫画を探すことの手間が省けると推測した。また、ユーザー同士でコミュニケーションが取れればさらにおすすめの漫画などを紹介し合えるのではないかと推測した。以上のことから、読んだ漫画を投稿し、ユーザー同士でコミュニケーションをとることができるWebアプリケーションを開発することにした。

# 実装した機能についての画像やGIFおよびその説明

## 漫画投稿機能
ログイン時にヘッダーにあるactionボタンにカーソルを合わせて、表示された新規投稿ボタンをクリックすると漫画の新規投稿ページに遷移する
新規投稿ページにて、投稿フォームに漫画の情報（タイトル、原作、作者、ジャンル、カテゴリー、年代、出版社、掲載誌、一言感想）を入力し投稿する  
投稿された漫画はトップページ（一覧ページ）に表示される
https://gyazo.com/d99e8e6da96df5645f04c3428c9b7609
https://gyazo.com/8cd31c78cfbab6e708e8b5bc09e59b80

## 漫画詳細機能
投稿された漫画の画像をクリックすると、投稿された漫画の詳細ページに遷移し、漫画の情報（タイトル、原作、作者、ジャンル、カテゴリー、年代、出版社、掲載誌、一言感想）が表示されている
https://gyazo.com/d4854642e3b0149512c71f40f7aed2c8

## 漫画編集機能
自分が投稿した漫画の詳細ページにある編集ボタンをクリックすると投稿した漫画の編集ページに遷移する  
編集ページにて編集したい情報を入力して変更ボタンをクリックすることで漫画の情報が更新される
https://gyazo.com/7b5edcfd01e1df40a36fa0927d1e7d15
https://gyazo.com/0f2a0c5c8dbb11fab1278a29288d666f

## 漫画削除機能
自分が投稿した漫画の詳細ページにある削除ボタンをクリックすると、「本当に削除しますか」という確認メッセージが表示される  
OKをクリックすると、削除が実行されてトップページ（一覧ページ）に遷移する  
https://gyazo.com/77ada8defa77ce3860a91179fd32de46

## 漫画検索機能
ヘッダーにある検索フォームに検索したいキーワードを入力する  
検索対象となるタイトル、原作、作者のどれかとキーワードが一致した場合、一致した漫画がページに表示される
https://gyazo.com/4a9e91049d554168b67b5bf41fdc9906
https://gyazo.com/bdc2db2c95a977ef7f852ef5832e66eb
https://gyazo.com/e1f176f027ba2eddc68eb845328b1e58

## ユーザー新規登録機能
ヘッダーにある新規登録ボタンをクリックすると、新規登録画面に遷移する  
フォームに必要な情報（名前、メールアドレス、パスワード、パスワード確認）を入力し新規登録をする
https://gyazo.com/f184cfc9424f99bb81c2efe5c52a5aaf
https://gyazo.com/5903d27d86ddf04f93d310ca137d8ec7

## ユーザーログイン機能
ヘッダーにあるログインボタンをクリックすると、ログイン画面に遷移する  
フォームにメールアドレス、パスワードを入力してログインする
https://gyazo.com/d263c0086425f10934ab4322a3aaf659
https://gyazo.com/2cccac7f1a33c364cf17fe3b58e0fa19

## ユーザーマイページ機能
ログイン時にヘッダーにあるユーザー名にカーソルを合わせて、表示されたマイページボタンをクリックするとマイページに遷移する  
マイページにはユーザーが投稿した漫画の一覧が表示されている
https://gyazo.com/3d12e1e598ea2a8261eb0a2d3f1978e7

## ユーザー編集機能
マイページにある編集ボタンをクリックすると、ユーザーの編集ページに遷移する  
編集ページにて編集したい情報を入力して変更ボタンをクリックするとユーザーの情報が編集される
https://gyazo.com/8e706edd2047d6bf2283224380abd185
https://gyazo.com/811cce18074900d24531b61e465eaf41

## ユーザー削除機能
マイページにある削除ボタンをクリックすると、「本当に削除しますか」という確認メッセージが表示される  
OKをクリックすると、削除が実行されてトップページ（一覧ページ）に遷移する  
https://gyazo.com/99aefb217683b677181441ecc6e26657

## コメント投稿機能
ログインをした状態で投稿された漫画の詳細ページにあるコメントのフォームにコメントを入力する  
送信ボタンをクリックするとコメント一覧に登校したコメントと投稿したユーザー名が表示される
https://gyazo.com/7fd8dd042ceba5341c383e6759b0dbc1
https://gyazo.com/300ba694fc4921b749fe793da715d3c0

## チャットルーム新規作成機能
ログイン時にヘッダーにあるactionボタンにカーソルを合わせて、表示されたチャットルームボタンをクリックするとチャットルームのトップページに遷移する  
チャットを作成するボタンをクリックすると、チャットルームの新規作成ページに遷移する  
新規作成ページにてチャットルーム名とチャットメンバーを入力しルーム作成をクリックするとチャットルームが作成される
https://gyazo.com/127c12e8f612408cc78edb02ea9d1a4f
https://gyazo.com/d8cea89486b1d0b14b4d6023cf0128b3

## メッセージ投稿機能
作成したチャットルームをクリックすると、チャットルームが表示される  
表示されたチャットルームにあるフォームにメッセージを入力する  
送信ボタンをクリックするとチャットルームにメッセージと投稿したユーザー名と投稿時間が表示される
https://gyazo.com/f04ec0c817a3f9eb7223684f8f8460af
https://gyazo.com/213609cb709995d3e436f703c428665c

## チャットルーム削除機能
作成したチャットルームをクリックすると、チャットルームが表示される
表示されたチャットルームにあるチャットを終了するボタンをクリックすると、「本当に削除しますか」という確認メッセージが表示される  
OKをクリックするとチャットルームが削除され、チャットルームのトップページに遷移する
https://gyazo.com/8893d56d443a2a9b716bf20fae439ed8
https://gyazo.com/cd58fdcdba983efc3e9615c7872e9cbf

# 洗い出した要件
[要件を定義したシート](https://docs.google.com/spreadsheets/d/1pidB3WL7_j3yHIrMJDdw2MyHy0iMjOXa48GTa0Thjec/edit#gid=982722306)

# 実装予定の機能
タグ機能、いいね機能を実装予定。

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/9046b1c4385b33007cb56b77f70bcbc6.png)](https://gyazo.com/9046b1c4385b33007cb56b77f70bcbc6)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/4e46abfeb2a4ea2e9d3aceaff9a81165.png)](https://gyazo.com/4e46abfeb2a4ea2e9d3aceaff9a81165)

# 開発環境
HTML  
CSS  
JavaScript  
Ruby  
Ruby on Rails  
MySQL  
Github  
Visual Studio Code

# ローカルでの動作方法
以下のコマンドを順に実行  
% git clone https://github.com/kh00x10a/comic-connect  
% cd comic-connect  
% bundle install  
% yarn install

# 工夫したポイント
テックキャンプで学習した機能を可能な限り取り入れた  
「ユーザー名」と「action」のボタンにカーソルを合わせると、下にそれぞれ「マイページ」、「ログアウト」と「新規投稿」、「チャットルーム」が表示されるようにJavaScriptを使って実装した  
ユーザーの削除と投稿の削除をするときに確認メッセージが表示されるようにJavaScriptを使って実装した


# テーブル設計

## users テーブル

| Column                          | Type        |  Options                          |
| ------------------------------- | ----------- | --------------------------------- |
| name                            | string      | null: false                       |
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
