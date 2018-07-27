class ProductSerializer < ActiveModel::Serializer
  attributes :id, :description, :inventory
end
