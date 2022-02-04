Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "front#index"
  #  get "authors/:id" => "authors#author"
   get "/authors" => "authors#author"
   get "/sections" => "sections#section"
   get "/authors/:aid" => "books#book"
   get "/sections/:id" => "students#student"
   get "/books/:id" => "booksinfos#info"
   get "/students/:id" => "studentinfos#info"
   get "/students/:id/authors" =>"authors#author"
   get "/students/:id/authors/:aid" => "books#book"
  #  get "/students/:id/books/:bid" => "Issues#issue"
   get "/students/:id/books" => "books#allbooks"
   get "/students/:id/books/:bid" => "addissues#after_issued"
   get "/students/:id/books/:bid/return" => "addissues#return_book"
   
end
