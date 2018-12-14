class ProductSerializer < ActiveModel::Serializer
  attributes :id, :inventory, :name, :description
end
