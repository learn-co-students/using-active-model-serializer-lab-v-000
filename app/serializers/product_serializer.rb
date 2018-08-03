class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :inventory, :price, :description
  has_many :ordered_products
  has_many :orders, through: :ordered_products
end
