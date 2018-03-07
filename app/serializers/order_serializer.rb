class OrderSerializer < ActiveModel::Serializer
  attributes :id
  has_many :ordered_products
  has_many :products, through: :ordered_products
end
