class ProductSerializer < ActiveModel::Serializer
  attributes :name, :id, :description, :inventory, :price
  belongs_to :orders
end
