class OrdersController < ApplicationController

  def index
    @orders = Order.all
    respond_to do |format|
      format.html {render :index}
      format.json {render json: @orders, each_serializer: OrderSerializer}
    end
  end

  def show
    @order = Order.find(params[:id])
    render json: @order, status: 200
  end

end
