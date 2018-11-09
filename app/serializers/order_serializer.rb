class OrderSerializer < ActiveModel::Serializer
  attributes :id
  has_many :ordered_products
end
