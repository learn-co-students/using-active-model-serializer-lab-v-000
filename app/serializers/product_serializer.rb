class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :inventory, :description  
  has_many :orders
end
