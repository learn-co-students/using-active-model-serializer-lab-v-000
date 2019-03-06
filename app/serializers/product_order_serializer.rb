class ProductOrderSerializer < ActiveModel::Serializer
  attributes :id 
  has_many :products
end
