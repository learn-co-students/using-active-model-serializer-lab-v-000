class ProductSerializer < ActiveModel::Serializer
  attributes :name, :price, :description, :inventory

  has_many :orders, through: :order_products
end
