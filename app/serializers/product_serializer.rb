class ProductSerializer < ActiveModel::Serializer
  attributes :id, :description, :price, :name, :inventory
  has_many :orders
end
