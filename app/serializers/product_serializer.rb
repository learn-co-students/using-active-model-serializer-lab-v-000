class ProductSerializer < ActiveModel::Serializer
  attributes :description, :inventory, :name, :price, :id
  has_many :orders
end
