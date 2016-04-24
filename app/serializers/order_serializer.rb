class OrderSerializer < ActiveModel::Serializer
  attributes :id, :created_at
  has_many :products, serializer: ProductOrderSerializer
  # i think this should have the product order serializer. 
  # it should only show the product names instead of showing the 
  # product names and also asking for the orders again.
end
# i need to get this 
#  when i look at the json for a product, i don't expect to see
# the orders if i want json for product_orders, that should probably be a separate call