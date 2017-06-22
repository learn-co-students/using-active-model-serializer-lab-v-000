class ProductSerializer < ActiveModel::Serializer
  #has_many :orders
  attributes :id, :name, :description, :price, :inventory, :orders
end
