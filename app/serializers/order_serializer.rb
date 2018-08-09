class OrderSerializer < ActiveModel::Serializer
  attributes :id
  pas_many :Products, serializer: ProductSerializer
end
