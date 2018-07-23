class ProductSerializer < ActiveModel::Serializer
  attributes :id, :price, :description, :inventory, :name
end
