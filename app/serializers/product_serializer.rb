class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :inventory
end
