class OrderSerializer < ActiveModel::Serializer
  attributes :id
   has_many :ordered_products
  has_many :productss, serializer: ProductOrderSerializer
end
