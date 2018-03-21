class OrdersController < ApplicationController

  def index
    @orders = Order.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @orders, status: 200 }
    end
  end

  def show
    @order = Order.find(params[:id])
    respond_to do |format|
      format.html { render :show}
      format.json { render json: @order, status: 200 }
    end 
  end

end
