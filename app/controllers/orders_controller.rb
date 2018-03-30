class OrdersController < ApplicationController

  def index
    @orders = Order.all
    render json: @orders, status: 200
  end

end