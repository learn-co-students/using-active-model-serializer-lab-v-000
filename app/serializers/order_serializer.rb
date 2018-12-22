class OrderSerializer < ActiveModel::Serializer
  has_many :ordered_products
  has_many :products, :through => :ordered_products
  attributes :id, :created_at
end
