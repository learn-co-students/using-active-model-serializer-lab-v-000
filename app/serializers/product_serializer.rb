class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :inventory, :description
end
