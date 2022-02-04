class BooksinfosController < ApplicationController
  def info
    @info = Book.find_by(id: params[:id])
    @students = @info.issues
    @available_copies = @info.copies - @students.where(return_date:nil).count
  end
  def reviews
    stars = 0
    @info.feedbacks.each do |feedback|
      {
        stars => 5
      }
    end
    return stars
  end
  helper_method :reviews

end
