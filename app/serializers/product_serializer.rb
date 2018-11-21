class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :inventory
  has_many :orders
end
