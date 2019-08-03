class ProductSerializer < ActiveModel::Serializer
  attributes :id, :inventory, :order, :name
  has_many :orders
end
