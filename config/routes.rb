Rails.application.routes.draw do


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
  # コメント投稿機能
  namespace("comment") do
    get  ':id', {:to => "comments#index"}
    post 'create/:id', {:to => "comments#create"}
    get  'edit/:id', {:to => "comments#edit"}
    get  'update/:id', {:to => "comments#update"}
    get  'show/:id', {:to => "comments#show"}
  end


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

  get "/shop", {to: "tops#shop"};
  get "/aa", to: "tops#aa"
  get "/list", to: "tops#list";
  post "/list", to: "tops#list";
  get "/user", to: "tops#user";
  get "/index", to: "tops#index";
  get "/", to: "tops#index";

  get "/play", {:to  => "tops#play"}

  get "/comment/create", {:to => "comments#create"}
end
