class ProductSerializer < ActiveModel::Serializer
  attributes :id, :description, :price, :inventory, :name
  has_many :orders
end
