class ProductsController < ApplicationController
before_action :require_user_logged_in!

  def new
    @products = Product.new
  end

  def create
    @products = Product.new(products_params)
    if @products.save
      redirect_to products_path, notice: "Product created successfully."
    else
      flash.now[:alert] = "Failed to create product."
      render :new
    end
  end

  def show
    @products = Product.all
  end

  private
  def products_params
    params.require(:product).permit(:name, :price)
  end
end