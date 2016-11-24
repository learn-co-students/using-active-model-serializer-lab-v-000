class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
      @order = Order.find(params[:id])
      respond_to do |format|
        format.html { render :show }
        format.json { render json: @order }
      end
    end

end
# 1) ProductsController GET show returns a JSON representation of the product
#    Failure/Error: expect(body["name"]).to eq product.name
#
#    NoMethodError:
#      undefined method `[]' for nil:NilClass
#    # ./spec/controllers/products_controller_spec.rb:28:in `block (3 levels) in <top (required)>'
#
# 2) Products products show loads next product without page refresh
#    Failure/Error: expect(page).to have_content p2.name
#      expected to find text "Test Product 2" in "Flatiron Widgets Store Next Product Test Product 0 2 This is a test description with more text than should be there."
#    # ./spec/features/product_feature_spec.rb:30:in `block (3 levels) in <top (required)>'
#
# 3) Products products index gets the description and inventory
#    Failure/Error: expect(page).to have_content product.description
#      expected to find text "This is a test description with more text than should be there." in "Flatiron Widgets Store Products Test Product This is a test description ... More Info"
#    # ./spec/features/product_feature_spec.rb:47:in `block (3 levels) in <top (required)>'
