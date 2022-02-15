class ProductsController < ApplicationController
  before_action :user_login

  def index
    @name = params[:name]
    @price = params[:price]
    if @price == nil && @name == nil || @name == "" && @price == "0"
      @products = Product.where(user_id:session[:user_id]).paginate(page: params[:page])
      elsif  @name !="" && @price == "0"
        @products = Product.where(user_id:session[:user_id],name:params[:name].strip.capitalize).paginate(page: params[:page])
        flash[:alert] = "No Products Found with that name."
      elsif  @price != 0 && @name ==""
        @products = Product.where(user_id:session[:user_id]).where("price < ?","#{@price}").paginate(page: params[:page])
        flash[:alert] = "No Products Found with less than that price."
    else
      @products = Product.where(user_id:session[:user_id]).where(name:params[:name].strip.capitalize).where("price < ?","#{@price}").paginate(page: params[:page])
      flash[:alert] = "No Products Found with that name and less than that price."      
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
