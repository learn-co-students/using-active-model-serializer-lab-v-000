class OrderSerializer < ActiveModel::Serializer
  attributes :id, :customer_id, :invoice_id
  has_many :products
end
