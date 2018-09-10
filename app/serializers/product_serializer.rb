class ProductSerializer < ActiveModel::Serializer
  attributes :id
  attributes :id, :name, :description, :inventory, :price
  has_many :orders
end
