class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :inventory, :price, :description
  has_many :orders
end
