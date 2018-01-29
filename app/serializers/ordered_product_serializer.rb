class OrderedProductSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :order_id
  belongs_to :products
  belongs_to :orders
end
