class ProductSerializer < ActiveModel::Serializer
  attributes :id, :price, :description, :inventory, :name
  has_many :orders
end
