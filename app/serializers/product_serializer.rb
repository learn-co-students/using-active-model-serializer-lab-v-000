class ProductSerializer < ActiveModel::Serializer
  attributes :id, :inventory, :orders, :name, :description
end
