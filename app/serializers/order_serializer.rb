class OrderSerializer < ActiveModel::Serializer
  attributes :id, :created_at
  has_many :products
  class ProductSerializer < ActiveModel::Serializer
    attributes :id, :name
  end
end
