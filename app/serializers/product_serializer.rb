class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :updated_at, :inventory, :description
  has_many :orders, through: :ordered_products
end
