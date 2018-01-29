class OrderSerializer < ActiveModel::Serializer
  attributes :id, :products
  has_many :products, serializer: OrderProductSerializer
end
