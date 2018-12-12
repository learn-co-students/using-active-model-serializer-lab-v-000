class OrderSerializer < ActiveModel::Serializer
  attributes :id, :created_at
  has_many :products, serializer: OrderedProductSerializer
end
