class OrderSerializer < ActiveModel::Serializer
  attributes :id, :products
  belongs_to :product
end
