class ProductSerializer < ActiveModel::Serializer
  attributes :id, :inventory, :price, :description
  has_many :orders
end
