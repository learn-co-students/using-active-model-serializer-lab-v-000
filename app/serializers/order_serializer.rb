class OrderSerializer < ActiveModel::Serializer
  attributes :id, :invoice_id, :customer_id
  belongs_to :invoice
  belongs_to :customer
end
