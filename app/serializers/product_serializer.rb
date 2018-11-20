class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :inventory, :price
  belongs_to :orders, serializer: OrderedProductSerializer
end
