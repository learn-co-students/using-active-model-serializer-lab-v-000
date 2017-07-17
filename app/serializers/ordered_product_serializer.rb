class OrderedProductSerializer < ActiveModel::Serializer
  attributes :product_id, :order_id, :created_at
  belongs_to :product
end
