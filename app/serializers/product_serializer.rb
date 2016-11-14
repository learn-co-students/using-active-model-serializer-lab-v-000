class ProductSerializer < ActiveModel::Serializer
  attributes :name, :price, :inventory, :description
  has_many :orders 
end
