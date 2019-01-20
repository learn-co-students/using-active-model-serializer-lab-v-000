class ProductSerializer < ActiveModel::Serializer
  attributes :id, :description, :inventory, :price, :name
end
