class OrderSerializer < ActiveModel::Serializer
  #has_many :products
  attributes :id, :created_at
end
