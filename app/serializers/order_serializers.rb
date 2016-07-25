class OrderSerializers < ActiveModel::Serializer
  attributes :id, :created_at, :products
  has_many :products, serializer: ProductsOrderSerializer
end

