class OrderSerializer < ActiveModel::Serializer
  attributes :id, :customer_id, :invoice_id, :created_at, :updated_at
  has_many :products, serializer: ProductOrderSerializer
end
