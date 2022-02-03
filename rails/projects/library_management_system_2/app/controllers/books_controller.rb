class BooksController < ApplicationController
  def book 
    @books = Book.where(author_id:params[:id])
  end
end
