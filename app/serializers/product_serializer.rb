class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :inventory, :description, :price
  has_many :orders
end
