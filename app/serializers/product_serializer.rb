class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :inventory, :price, :orders
  # has_many :orders
end
