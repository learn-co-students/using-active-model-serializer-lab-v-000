class OrderSerializer < ActiveModel::Serializer
  attributes :customer_id, :invoice_id
end
