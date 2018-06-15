class ProductSerializer < ActiveModel::Serializer
  attributes :id, :inventory, :name, :price, :description
end
