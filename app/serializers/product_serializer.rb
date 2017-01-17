class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :id, :description, :inventory
  has_many :orders
end
