class OrderSerializer < ActiveModel::Serializer
  attributes :id, :created_id
  has_many :products
end
