class ProductSerializer < ActiveModel::Serializer
  attributes :id, :inventory, :description, :price, :name
  has_many :orders
end
