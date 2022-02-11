Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "users#login"
  get "/index" => "users#login"
  get "/users/new" => "users#new"
  get "/users/logout" => "users#logout"
  delete "/products/:id" => "products#destroy"
  resources :users 
  resources :products
end
