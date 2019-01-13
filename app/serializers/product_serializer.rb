class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :inventory, :description
end
