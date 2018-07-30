class OrdersController < ApplicationController

  def index
    @orders = Order.all
    respond_to do |f|
      f.json {render :json => @orders}
      f.html {render :index}
    end
  end

end
