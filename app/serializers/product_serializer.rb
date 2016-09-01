class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price
  # has_one :description
end
