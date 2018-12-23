class ProductSerializer < ActiveModel::Serializer
  has_many :ordered_products
  has_many :orders, :through => :ordered_products
  attributes :id, :name, :description, :inventory, :price
end
