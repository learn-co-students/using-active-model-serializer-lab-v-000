class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def inventory
    product = Product.find(params[:id])
    render plain: product.inventory > 0 ? true : false
  end

  def description
    product = Product.find(params[:id])
    render plain: product.description
  end

  def new
    @product = Product.new
  end

  def create
    Product.create(product_params)
    redirect_to products_path
  end

  def show
    @product = Product.find(params[:id])
    # binding.pry
    respond_to do |format|
      format.json { render json: @product, status: 200}
      format.html { render :show }
    end
    # binding.pry
    # render json: @product, status: 200

  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end
end
