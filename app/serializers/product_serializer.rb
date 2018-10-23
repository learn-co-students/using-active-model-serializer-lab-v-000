class ProductSerializer < ActiveModel::Serializer
  attributes :id, :description, :inventory, :name
  has_many :orders
end
