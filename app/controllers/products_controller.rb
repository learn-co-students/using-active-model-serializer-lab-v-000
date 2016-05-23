class ProductsController < ApplicationController
  def index
    @products = Product.all
    # render json: @products
  end

  # def inventory
  #   product = Product.find(params[:id])
  #   render plain: product.inventory > 0 ? true : false
  # end
  #
  # def description
  #   product = Product.find(params[:id])
  #   render plain: product.description
  # end

  def new
    @product = Product.new
  end

  def create
    Product.create(product_params)
    redirect_to products_path
  end

  def show
    @product = Product.find(params[:id])
    respond_to do |f|
      f.html { render :show }
      f.json { render json: @product }
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end
end
