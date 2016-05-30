class OrdersController < ApplicationController

  def index
    @orders = Order.all
    render json: @order
  end

end
