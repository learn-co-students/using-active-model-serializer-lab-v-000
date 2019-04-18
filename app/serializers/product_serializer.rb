class ProductSerializer < ActiveModel::Serializer
  attributes :id, :inventory, :description
end
