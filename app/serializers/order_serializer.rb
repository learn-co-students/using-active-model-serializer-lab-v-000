class OrderSerializer < ActiveModel::Serializer
  attributes :id
  has_many :Products, serializer: ProductSerializer
end
