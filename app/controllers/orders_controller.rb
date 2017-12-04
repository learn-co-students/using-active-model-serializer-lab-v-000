class OrdersController < ApplicationController

  def index
    @orders = Order.all
    respond_to do |f|
      f.html {render :index}
      f.json {render json: @orders}
    end
  end

end