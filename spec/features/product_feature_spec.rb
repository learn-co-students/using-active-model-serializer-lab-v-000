require 'rails_helper'

RSpec.describe "Products", type: :feature do
  before do
    Product.destroy_all
    Customer.destroy_all
    Invoice.destroy_all
    Order.destroy_all
  end

  
end
