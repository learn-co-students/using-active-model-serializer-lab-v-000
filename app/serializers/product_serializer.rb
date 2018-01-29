class ProductSerializer < ActiveModel::Serializer
  attributes :id, :description, :name, :inventory
  has_many :orders, serializer: ProductOrderSerializer
end
