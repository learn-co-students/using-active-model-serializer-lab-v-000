class OrderSerializer < ActiveModel::Serializer
  attributes :id, :created_at
  has_many :products

# t.integer  "customer_id"
# t.integer  "invoice_id"  
end
