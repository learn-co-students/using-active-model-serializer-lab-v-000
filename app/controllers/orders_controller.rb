class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find_by(id: params[:id])
    respond_to do |format|
      format.html {render :index}
      format.json {render json: @order}
    end
  end

end
