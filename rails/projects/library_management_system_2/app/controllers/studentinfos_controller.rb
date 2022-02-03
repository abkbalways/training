class StudentinfosController < ApplicationController
  def info

    @info = Student.find_by(id:params[:id])
    @age = Date.current.year - Student.find_by(id:params[:id]).dob.year
    @books = Student.find_by(id:params[:id]).books

  end
end
