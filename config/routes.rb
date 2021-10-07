Rails.application.routes.draw do


  # API用ルーティング
  namespace("api") do

    namespace("v1") do

      # 画像の取り扱い用API
      resources :images

      # いいねの送受信取り扱い用API
      resources :likes
    end

  end

  resources :users
  # ユーザー情報登録



  # admin/board
  # admin/commnet
  # 二階層にURLをネストした場合
  # 名前空間 admin
  # コメント用機能
  namespace("admin") do

    namespace("board") do
      get 'boards/index'
      get 'boards/show'
      post 'boards/create'
      # 指定した掲示板の編集ページを表示する
      get 'boards/edit/:id', {:to => "boards#edit"}
      post 'boards/update/:id', {
        to: "boards#update"
      }
    end
    namespace("comment") do
      get  'comment/:id', {:to => "comments#index"}
      post 'comment/create/:id', {:to => "comments#create"}
      get  'comment/edit/:id', {:to => "comments#edit"}
      get  'comment/update/:id', {:to => "comments#update"}
      get  'comment/show/:id', {:to => "comments#show"}
    end
  end


  # 名前空間 comment
  # 一回層にURLをネストした場合
  # コメント投稿機能
  namespace("comment") do
    get  ':id', {:to => "comments#index"}
    post 'create/:id', {:to => "comments#create"}
    get  'edit/:id', {:to => "comments#edit"}
    post  'update/:id', {:to => "comments#update"}
    get  'show/:id', {:to => "comments#show"}
    # ()付きで明示的にメソッドとして呼び出す
    post('delete/:id', {"to".intern() => "comments#delete"});
  end

  # ログイン関連
  get("/login", {:to => "sessions#new"})
  post("/login", {:to => "sessions#create"})
  delete("/logout", {:to => "sessions#delete"})

  # 掲示板一覧
  get 'boards/index'
  get 'boards/show'
  post 'boards/create'
  # 指定した掲示板の編集ページを表示する
  get 'boards/edit/:id', {:to => "boards#edit"}
  post 'boards/update/:id', {
    to: "boards#update"
  }
  # resources :tops
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
