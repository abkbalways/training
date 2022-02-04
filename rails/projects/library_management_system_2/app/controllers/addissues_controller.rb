class AddissuesController < ApplicationController
  def after_issued
    book = Book.find_by(id:params[:bid])
    student = Student.find_by(id:params[:id])
    student.books << book
  end
  def return_book
    Issue.find_by(book_id:params[:bid],student_id:params[:id]).update(return_date:DateTime.current)
  end
end
