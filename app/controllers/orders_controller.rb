class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @order}
    end
  end

  def index
    @orders = Order.all
  end

end
