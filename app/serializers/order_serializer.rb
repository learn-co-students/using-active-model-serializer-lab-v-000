class OrderSerializer < ActiveModel::Serializer
  attributes :id, :customer, :invoice, :products
  has_many :ordered_products
  has_many :products, :through => :ordered_products
end
