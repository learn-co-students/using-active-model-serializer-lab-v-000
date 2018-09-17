class ProductOrderSerializer < ActiveModel::Serializer
  attributes :id, :invoice_id, :created_at
end
