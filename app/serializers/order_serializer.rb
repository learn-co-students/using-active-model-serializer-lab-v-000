class OrderSerializer < ActiveModel::Serializer
  attributes :id, :customer

  has_many :products, serializer: OrderProductsSerializer
end
