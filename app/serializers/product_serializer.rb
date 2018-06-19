class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :inventory, :orders

  has_many :orders
end
