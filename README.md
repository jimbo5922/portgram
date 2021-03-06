# Portgram

このwebアプリを作った理由は、海（海水浴場）をもっとみんなに身近なものにしたいという思いからです。  
ここ２、３年で若者を中心に海離れが進んでおり、それを食い止めるために何ができるか私なりに考えた結果です。  

海離れにも様々な理由があるとは思いますが、私は「他にも楽しいことがあるから海には行かない」  
ということが理由なのではないかと考えました。  
そこで、海の楽しさをみんなで共有できるアプリを作ろうと考えました。  

しかし、ただ単に海の写真を投稿するのでは既存のSNSと変わりないので、  
私なりの工夫として、投稿した海水浴場の評価機能も実装し、  
口コミサイトとしての側面も持たせることにしました。  
加えて、地図情報も加えたことによりどこの海水浴場か直感的に分かるようにもしました。

## 使用技術
・Ruby 2.6.3, Rails 6.0.2.1  
・webpacker: SASS, Bootstrap, JQuery  
・Docker, Docker-compose  
・Circle CI  
・nginx, unicorn  
・AWS(VPC, EC2, Route53, ACM, ALB)  
・Rspec  
・Google Maps API  

## 機能一覧
・ユーザ登録機能  
・プロフィール編集機能  
・ログイン、ログアウト機能(かんたんログイン機能)  
・フォロー、フォロー解除機能(Ajax)  
・フォロー、フォロワー一覧表示機能  
・記事投稿、投稿削除機能  
・投稿一覧、投稿詳細表示機能  
・ページネーション機能  
・いいね！登録、解除機能  
・お気に入り登録、解除、一覧表示機能  
・評価機能  
・住所登録機能  
・Google Maps APIによる地図表示機能  
・コメント投稿、表示、削除機能  
・投稿検索機能  
・Rspecによるテスト機能  
