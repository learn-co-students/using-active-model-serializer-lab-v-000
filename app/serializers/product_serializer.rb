class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :inventory, :price, :orders
end
