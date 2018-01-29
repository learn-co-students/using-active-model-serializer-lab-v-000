class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :inventory
  has_many :orders
  class OrderSerializer < ActiveModel::Serializer
    attributes :id, :products
  end
end
