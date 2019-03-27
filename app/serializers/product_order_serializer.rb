class ProductOrderSerializer < ActiveModel::Serializer
  attributes :id, :created_at
  has_many :orders
end
