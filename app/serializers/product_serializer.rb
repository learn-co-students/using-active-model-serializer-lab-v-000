class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :inventory
  has_many :orders, serializer: OrdersSerializer
end
