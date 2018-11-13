class OrderSerializer < ActiveModel::Serializer
  belongs_to :product
  attributes :id, :created_at
end
