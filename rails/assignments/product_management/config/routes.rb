Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "users#login"
  get "/index" => "users#login"
  get "/users/new" => "users#new"
  resources :users
  resources :products
end
