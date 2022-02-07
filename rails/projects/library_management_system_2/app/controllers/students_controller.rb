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
    
  end

  def create
    @student = Student.new(name:params[:name],city:params[:city],mobile:params[:mobile],section_id:params[:section_id],dob:params[:dob],email:params[:email])
    @student.save
    id = Student.last.id
    redirect_to "/students/#{id}"
    
  end

  private
    def student_params
      params.require(:student).permit(:name, :city, :mobile, :section_id, :dob, :email)
    end
end
