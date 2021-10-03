Rails.application.routes.draw do
  resources :tops
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/list", to: "tops#list";
  get "/", to: "tops#index";

end
