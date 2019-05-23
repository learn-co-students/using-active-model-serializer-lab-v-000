class OrderSerializer < ActiveModel::Serializer
  
  has_many :products
end
