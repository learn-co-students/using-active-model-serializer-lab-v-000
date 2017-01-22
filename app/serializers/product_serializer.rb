class ProductSerializer < ActiveModel::Serializer
  attributes :id, :description, :inventory, :name, :price
  has_many :orders
end
