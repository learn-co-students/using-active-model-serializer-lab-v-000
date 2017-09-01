class OrdersController < ApplicationController

  def index
    @orders = Order.all
    respond_to do |f|
    	f.html {render :index}
    	f.json {render json: @orders}
    end	
  end

  def show
  	@order = Order.find(params[:id])
  	respond_to do |f|
  		f.html {render :show}
  		f.json {render json: @order}
  	end	
  end

end