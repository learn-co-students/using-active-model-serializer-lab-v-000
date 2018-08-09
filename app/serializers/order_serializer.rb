class OrderSerializer < ActiveModel::Serializer
  has_many :products, serializer: ProductOrderSerializer
  attributes :id, :created_at
end
