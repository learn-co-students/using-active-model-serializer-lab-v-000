class ProductSerializer < ActiveModel::Serializer
  attributes :name, :description, :inventory, :price
  has_many :orders
end
