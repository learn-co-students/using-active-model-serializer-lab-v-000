class OrderSerializer < ActiveModel::Serializer
  attributes :id, :created_at
  belongs_to :products, serializer: ProductOrderSerializer
end
