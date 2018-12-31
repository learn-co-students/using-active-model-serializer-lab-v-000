class OrderSerializer < ActiveModel::Serializer
  attributes :id, :invoice_id
  has_many :ordered_products
  has_many :products, :through => :ordered_products, serializer: OrderProductSerializer
end
