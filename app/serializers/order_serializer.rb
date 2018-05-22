class OrderSerializer < ActiveModel::Serializer
  attributes :id, :created_at
  has_many :products, :through => :ordered_products
  class ProductSerializer < ActiveModel::Serializer
    attributes :name
  end
end
