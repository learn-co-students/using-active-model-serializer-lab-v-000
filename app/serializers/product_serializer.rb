class ProductSerializer < ActiveModel::Serializer
  attributes :id, :price, :inventory, :name, :description
end
