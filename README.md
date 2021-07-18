# twitter_clone
Flutter/Firebaseで作成中のツイッターライクなアプリケーションです。

## アプリの機能
### 認証系
認証にはFirebase Authのemail&password認証を使用しています。
本アプリでは認証の状態は未認証・アカウント未情報設定・認証完了の３状態があり、それぞれログイン画面・プロフィール設定画面・ホーム画面にルーティングされるようになっています。

![画面](doc/twitter_clone.png)

### タイムラインとツイート
本アプリにはフォロー機能がないため, タイムラインにはすべてのユーザーのすべての投稿が閲覧可能になっています。
FloatingActionButtonを押下すると、ツイート編集用のモーダルが表示され、ツイートできます。

## 制作期間
最低限の認証とツイート機能は２日間かけて12時間ぐらいで作成しました。

## Demo
[こちら](https://flutter-twitter-clone-app.web.app)にFlutter webを使ってデモサイトをホストしました。
開発はiOSのエミュレータを使って行ったのですが、Webでもしっかり動いて少し感動。

## アーキテクチャ
本アプリはapplication, infrastructure, presentationの３層からなります。
それぞれの役割について軽く解説します。

### application
application層はアプリで使う主要なクラス(UserやTweet)の定義、Tweetするなどのアプリケーションのロジックの記述を行っています。
また、DBから読み込んだ値を保持するのも役割も担っています(Tweet一覧やUser一覧の保持)。

### presentation
presentationはFlutterのUIとその振る舞いについて書く層です。
UIの状態と振る舞いの処理は〇〇_controller.dartのようなファイルにChangeNotifierを使用して書いています。

UIの状態や振る舞いの例としては, ローディングの状態などが挙げられます。

### infrastructure
infrastructure層では主にFirebaseのSDKをラップしてデータアクセスを実現するためのRepositoryを書いています。
Firebaseの処理は基本的にはこの層にしか書かないことで、UIやアプリケーションのロジックがFirebaseに依存することを防いでいます。




