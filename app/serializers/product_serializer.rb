class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :inventory, :price, :description
end
