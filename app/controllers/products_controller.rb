class ProductsController < ApplicationController
  def index
    @products = Product.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @products }
    end
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
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @product, status: 200, root: false }
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end
end
