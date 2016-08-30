class OrderSerializer < ActiveModel::Serializer
  attributes :id, :invoice_id
  has_many :products, serializer: ProductNameSerializer
end
