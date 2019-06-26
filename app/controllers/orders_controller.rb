class OrdersController < ApplicationController

  def index
    @orders = Order.find_by(id: params[:id])
    render json: @order
  end

end