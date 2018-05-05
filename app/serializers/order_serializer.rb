class OrderSerializer < ActiveModel::Serializer
  attributes :id, :created_ad
  belongs_to :products
end
