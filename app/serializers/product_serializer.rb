class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :inventory, :description, :price
end
