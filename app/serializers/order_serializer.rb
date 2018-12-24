class OrderSerializer < ActiveModel::Serializer
  attributes :id, :created_at
  has_many :products, :throught => :ordered_products
  has_many :ordered_products
end
