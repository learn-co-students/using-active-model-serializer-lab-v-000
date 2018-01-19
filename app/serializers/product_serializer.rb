class ProductSerializer < ActiveModel::Serializer
  attributes :name, :description, :inventory, :price, :id
  has_many :orders, serializer: OrderSerializer
end
