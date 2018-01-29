class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :inventory
  has_many :orders, serializer: OrderedProductSerializer
end
