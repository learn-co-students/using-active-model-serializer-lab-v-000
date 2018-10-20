class ProductSerializer < ActiveModel::Serializer
  attributes :id, :description, :inventory
  belongs_to :orders
end
