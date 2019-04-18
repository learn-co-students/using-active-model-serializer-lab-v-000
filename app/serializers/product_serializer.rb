class ProductSerializer < ActiveModel::Serializer
  attributes :id, :inventory, :description, :name
  has_many :orders
end
