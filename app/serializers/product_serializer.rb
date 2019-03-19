class ProductSerializer < ActiveModel::Serializer
  attributes :name, :description, :price, :inventory
end
