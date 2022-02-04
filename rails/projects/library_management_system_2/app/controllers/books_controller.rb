class BooksController < ApplicationController
  def book 
    @books = Book.where(author_id:params[:aid])
  end
  def allbooks
    @allbooks = Book.all
  end
end
