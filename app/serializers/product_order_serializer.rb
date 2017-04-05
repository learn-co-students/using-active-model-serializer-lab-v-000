class ProductOrderSerializer < ActiveModel::Serializer
  attributes :id, :customer_id, :invoice_id
 
end
