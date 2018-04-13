class ProductSerializer < ActiveModel::Serializer
  attributes :id, :description, :inventory, :name, :created_at
end
