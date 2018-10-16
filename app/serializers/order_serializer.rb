class OrderSerializer < ActiveModel::Serializer
  attributes :id, :created_at
  has_many :products, serializer: ProductOrderSerializer
end
# Update the OrderSerializer to include the product names of all products on that order.
# When I display an order's products, I DON'T need ALL the information (id, description, price, inventory)
# being rendered from the ProductSerializer.
# My order JSON just needs the names of its products, so I do a simpler serialization of the products.
# Running rails g serializer product_order generates: app/serializers/product_order_serializer.rb
# In ProductOrderSerializer, I add the bare minimum of what I need
# for products to be embedded in an order (only the name attribute)
# I get the OrderSerializer to use ProductOrderSerializer to serialize the associated products,
# instead of using the default ProductSerializer, by explicitly telling it to use ProductOrderSerializer
# When I go to order #30's show page, i.e., http://localhost:3000/orders/30, I see:
# {
#  "id": 30,
#  "created_at": "2018-10-16T14:02:14.999Z",
#  "products": [
#    {
#      "name": "macbook air"
#    }
#  ]
# }

# This is the JSON object representing the order instance w/ id = 30
# Its "products" key points to an array of product objects (products found in that order),
# which each have a name key/value pair.
