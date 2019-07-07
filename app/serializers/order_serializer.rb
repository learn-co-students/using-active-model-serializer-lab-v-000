class OrderSerializer < ActiveModel::Serializer
  attributes :id
  has_many :products
end
