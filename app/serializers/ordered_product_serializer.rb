class OrderedProductSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :order_id
  has_many :products
  has_many :orders
end
