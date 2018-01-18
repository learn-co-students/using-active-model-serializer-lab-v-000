class OrderSerializer < ActiveModel::Serializer
  attributes :id
  has_many :products, through: :ordered_products, serializer: OrderProductSerializer
end
