class ProductSerializer < ActiveModel::Serializer
  attributes :id, :inventory, :name, :description, :price
  has_many :orders
end
