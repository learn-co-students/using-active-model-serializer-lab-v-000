class ProductSerializer < ActiveModel::Serializer
  attributes :id, :description, :inventory, :price, :name
  has_many :orders
end
