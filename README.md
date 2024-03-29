## このアプリケーションについて

このアプリケーションは2桁の九九を暗記するための計算トレーニング用アプリケーションです。

[計算力を強くする](http://www.amazon.co.jp/%E8%A8%88%E7%AE%97%E5%8A%9B%E3%82%92%E5%BC%B7%E3%81%8F%E3%81%99%E3%82%8B%E2%80%95%E7%8A%B6%E6%B3%81%E5%88%A4%E6%96%AD%E5%8A%9B%E3%81%A8%E6%B1%BA%E6%96%AD%E5%8A%9B%E3%82%92%E7%A3%A8%E3%81%8F%E3%81%9F%E3%82%81%E3%81%AB-%E3%83%96%E3%83%AB%E3%83%BC%E3%83%90%E3%83%83%E3%82%AF%E3%82%B9-%E9%8D%B5%E6%9C%AC-%E8%81%A1/dp/4062574934/ref=pd_bxgy_14_img_y)という本を読みましたが、この本によると九九のようなよく行う計算は暗記しておくと有効であり、その範囲を19の段まで広ることでより早く計算を行えるようになるそうです(インドの算数の教科書には九九は19の段まである)。

そこで19の段を暗記するために、本アプリケーションを作りました。
アプリケーション利用の流れはいかのとおりです。

* アプリケーションを起動するとスタート画面が表示されます。
* スタートボタンで19の段からの出題が開始されます。
* 全問正解するまで出題が続きます(プログレスバーで進捗を確認可能)。
* 全問正解するとクリア画面に遷移します。

## プロジェクトのインストール

以下の手順でXcodeにプロジェクトを追加します。

* Xcode起動
* "Clone an existing project" をクリック
* `git@github.com:k0kishima/nineteen19.git` を入力
* 配置先を選択して clone を実行

※Xcode12.3 での操作手順となります。他のバージョンでは手順や入力項目が異なる場合があります。

## アプリケーションの実行

上記手順を行い、Xcodeを起動してビルドすれば実行できます。
