Rails.application.routes.draw do
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
