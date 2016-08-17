class ProductSerializer < ActiveModel::Serializer
  attributes :id, :description, :price, :inventory
  has_many :orders
end
