class OrdersController < ApplicationController

  def index
    @order = Order.find(params[:id])
    render json: @order
  end

end