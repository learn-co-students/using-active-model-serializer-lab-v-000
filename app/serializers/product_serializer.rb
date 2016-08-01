class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :inventory, :created_at
  has_one :orders, serializer: ProductOrderSerializer
end
