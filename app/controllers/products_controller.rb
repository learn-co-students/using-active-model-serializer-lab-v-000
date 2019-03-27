class ProductsController < ApplicationController
  before_action :set_product, only: [:show]
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    Product.create(product_params)
    redirect_to products_path
  end

  def show
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @product, status: 200}
    end
  end

  private
    def set_product
        @product = Product.find(params[:id])
    end

    def product_params
        params.require(:product).permit(:name, :description, :inventory, :price)
    end
end
