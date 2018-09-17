class OrderSerializer < ActiveModel::Serializer
  attributes :id, :invoice_id, :created_at

  has_many :products
end
