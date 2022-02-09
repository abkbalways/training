

class StudentsController < ApplicationController
  def index
    @students = Student.all.sort

    @text = params[:query1]
    if @text!=nil and @text!=""
    @studentsbyname = Student.all.where("name ilike ?","#{@text}%")
    end

    @dob = params[:query2] 
    if @dob!=nil and @dob!=""
    @studentsbydob = Student.where("dob < ?","#{@dob}")
    end
    
    @age = params[:query3]
    @studentsbyage = []
    if @age!=nil and @age!=""
      Student.all.each do |student|
        if (-(student.dob - DateTime.current)/(60*60*24*365.25)).floor > @age.to_i
          @studentsbyage << student
        end
      end
    end

    if defined?(@studentsbyname) and defined?(@studentsbydob) and (@studentsbyname.count)!=0 and (@studentsbydob.count)!=0
      @studentsbyboth = @studentsbyname & @studentsbydob
    end
  
    
   
    
    # @students3 = [] 
    # @students2 = Student.all
    # if @dob!=nil
    #   @students2.each do |student|
    #     if @dob!="" && student.dob<@dob
    #       @students3<<student
    #     end
    #   end
    # end

  end

  # def student
  #   @students = Student.where(section_id:params[:id])
  # end


  def search
  end

  def look
    @text = params[:query1]
    if @text == ""
      @value = 0
    end
    @students = Student.all.where("name ilike ?","#{@text}%")
    @dob = params[:query2] 

    @students3 = Student.where(dob<@dob)
   
  end

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

  def edit
    @student = Student.find_by(id:params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to "/students/#{@student.id}"
  end

  

  def delete
    @student = Student.find_by(id:params[:id])
    @student.destroy
    redirect_to "/students"
  end

  def age
    @dob = DateTime.current     
  end

  private 
  def student_params
    params.require(:student).permit(:name, :section_id, :city, :mobile, :dob, :email, :gender)
  end

end
