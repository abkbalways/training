class StudentsController < ApplicationController
  def student
    @students = Student.where(section_id:params[:id])
  end
end
