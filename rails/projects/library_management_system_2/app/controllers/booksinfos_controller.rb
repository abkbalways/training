class BooksinfosController < ApplicationController
  def info
    @info = Book.find_by(id: params[:id])
  end

end
