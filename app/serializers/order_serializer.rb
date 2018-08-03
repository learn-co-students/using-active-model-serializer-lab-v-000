class OrderSerializer < ActiveModel::Serializer
  attributes :id, :created_at
  has_many :ordered_products
  has_many :products, through: :ordered_products
end
