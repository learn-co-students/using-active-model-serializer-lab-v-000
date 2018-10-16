class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :inventory
  has_many :orders
end
# In products#show, if the request is asking for a JSON response,
# a plain text JSON string of the JSON object representing the @product instance is rendered
# ProductSerializer lets us whitelist the data we want back in the JSON object @product representation
# Here, I'm specifying that I only want this JSON string of the JSON object representation of @product
# to contain key/value pairs of data for @product instance's
# id, name, description, price and inventory attributes

# Now, if I go to the show page for product instance w/ id = 21, i.e.,
# http://localhost:3000/products/21.json,
# I can see the JSON object representing this product instance w/ id = 21,
# and it only contains key/value pairs of the attributes I want:

# {
#  "id": 21,
#  "name": "tv",
#  "description": "Sint et quo. Consequatur vel quo. Dolorem dicta consequuntur.",
#  "price": 1485,
#  "inventory": 0
# }

# There is a many-to-many relationship between products and orders.
# A product instance has_many :orders, through: :ordered_products,
# and an order instance has_many :products, through: :ordered_products
# Once I add has_many :orders to the ProductSerializer to serialize the associated Order model,
# and I go to the .json extension for product #22's show page, i.e.,
# http://localhost:3000/products/22.json,
# the JSON string of the JSON object representing the product instance looks like this, where
# orders points to an array of order objects that each have id and created_at k/v pairs
# {
#  "id": 22,
#  "name": "vcr",
#  "description": "Harum nobis neque. Esse id earum. Est repudiandae atque.",
#  "price": 916,
#  "inventory": 0,
#  "orders": [
#    {
#      "id": 22,
#      "created_at": "2018-10-16T14:02:14.950Z"
#    },
#    {
#      "id": 26,
#      "created_at": "2018-10-16T14:02:14.974Z"
#    }
#  ]
# }
