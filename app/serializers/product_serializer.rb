class ProductSerializer < ActiveModel::Serializer
  attributes :description, :inventory, :name, :price, :id
  has_many :ordered_products
  has_many :orders, :through => :ordered_products
end
