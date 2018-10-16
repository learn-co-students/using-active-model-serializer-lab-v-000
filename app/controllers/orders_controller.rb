class OrdersController < ApplicationController
  # testing out that orders#show can handle a JSON request
  def show
    @order = Order.find(params[:id])
    render json: @order, status: 200
  end
  # Before adding the app/views/orders/show.html.erb view file,
  # when I go to the show page for order instance w/ id = 21, i.e.,
  # http://localhost:3000/orders/21, this is what I see:
  # {
  #  "id": 21,
  #  "created_at": "2018-10-16T14:02:14.923Z"
  # }
  # Due to whitelisting the id & created_at attributes in the OrderSerializer,
  # the JSON object representing the order instance only has id & created_at k/v pairs
  def index
    @orders = Order.all
  end

end
