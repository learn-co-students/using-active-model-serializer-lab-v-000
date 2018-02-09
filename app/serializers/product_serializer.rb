class ProductSerializer < ActiveModel::Serializer
  attributes :id, :description, :name, :inventory, :price
  has_many :orders
end
