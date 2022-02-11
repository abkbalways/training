class ProductsController < ApplicationController
  before_action :user_login

  def user_login
    if session[:user_id] == nil
      flash[:message]= "You Must be Login :)"
      redirect_to "/"
    end
  end

  def index
    @products = Product.where(user_id:session[:user_id])
  end
  
  def new
    @product = Product.new
  end

  def create 
    @product = Product.new(product_params)
    @product.user_id = session[:user_id]
    if @product.save 
      flash[:message]= "Product Created Successfully !"
      redirect_to "/products"
    else 
      render "new" , status: :unprocessable_entity
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:message]= "Product Updated Successfully !"
      redirect_to "/products"
    else
      render "edit" , status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find_by(id:params[:id])
    @product.destroy
    redirect_to "/products"
  end


  private 
  def product_params
    params.require(:product).permit(:name, :price)
  end
end
