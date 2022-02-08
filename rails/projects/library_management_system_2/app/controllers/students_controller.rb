class StudentsController < ApplicationController
  def index
    @students = Student.all.sort
  end

  # def student
  #   @students = Student.where(section_id:params[:id])
  # end

  def show
    @student = Student.find_by(id:params[:id])
    @age = Date.current.year - Student.find_by(id:params[:id]).dob.year
  end

  def new
    @student = Student.new 
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to "/students/#{@student.id}"
    else
      render "new" , status: :unprocessable_entity
    end
  end

  def update
    @student.update(student_params)
    redirect_to "/students/#{@student.id}"
  end

  def edit
    @student = Student.find_by(id:params[:id])
  end

  def delete
    @student = Student.find_by(id:params[:id])
    @student.destroy
    redirect_to "/students"
  end

  private 
  def student_params
    params.require(:student).permit(:name, :section_id, :city, :mobile, :dob, :email)
  end

end
