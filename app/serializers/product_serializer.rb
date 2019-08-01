class ProductSerializer < ActiveModel::Serializer
  attributes :name, :description, :inventory, :price
end
