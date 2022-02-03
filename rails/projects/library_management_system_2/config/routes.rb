Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "front#index"
  #  get "authors/:id" => "authors#author"
   get "/authors" => "authors#author"
   get "/sections" => "sections#section"
   get "/authors/:id" => "books#book"
   get "/sections/:id" => "students#student"
   get "/books/:id" => "booksinfos#info"
   get "/students/:id" => "studentinfos#info"

   
end
