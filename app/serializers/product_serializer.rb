class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :inventory
  has_many :orders, :through => :ordered_products
end
