class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :inventory
  has_many :orders
  class OrderSerializer < ActiveModel::Serializer
    attributes :id, :created_at
  end 
end
