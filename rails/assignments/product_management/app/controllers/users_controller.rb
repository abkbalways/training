class UsersController < ApplicationController
  
  def login
    @username = params[:username]
    @password = params[:password]
    user = User.find_by(username:params[:username])
    @id = 0
    if @username!="" and @username!=nil 
      if  user!=nil and user.username == @username and user.password == @password
        session[:user_id] = user.id
        redirect_to "/products"
        @id = 0
      else
        @id = 1
        render "login"
      end
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # debugger
    if @user.save 
      redirect_to "/"
    else 
      render "new" , status: :unprocessable_entity
    end
  end

  def logout 
    session[:user_id] = nil
    redirect_to "/"
  end

  private 
  def user_params
    params.require(:user).permit(:username, :password,:address,:dob, :password_confirmation, :terms)
  end
end
