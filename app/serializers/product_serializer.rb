class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :inventory, :price
  has_many :orders, :through => :ordered_products
end
