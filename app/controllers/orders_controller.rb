class OrdersController < ApplicationController

  def index
    @orders = Order.all
     respond_to do |format|
       format.html { render :index }
       format.json { render json: @orders }
     end
  end

end
