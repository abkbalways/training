class ProductsController < ApplicationController
  before_action :user_login

  def index
    if params[:name] != nil
      flash[:alert] = "No Products Found with that name"
      @name = params[:name]
      @products = Product.where(user_id:session[:user_id],name:params[:name].strip.capitalize).paginate(page: params[:page])
    else
      
      @products = Product.where(user_id:session[:user_id]).paginate(page: params[:page])
    end
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
    flash[:message]= "Product Deleted Successfully !"
    redirect_to "/products"
  end


  private 
  
  def product_params
    params.require(:product).permit(:name, :price)
  end
  
  def user_login
    if session[:user_id] == nil
      flash[:message]= "You Must be Login :)"
      redirect_to "/"
    end
  end

end
