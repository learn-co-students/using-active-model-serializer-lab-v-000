class OrderSerializer < ActiveModel::Serializer
  attributes :id
  hash_many :products
end
