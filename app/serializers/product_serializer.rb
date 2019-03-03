class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :inventory, :description
  belongs_to :order, serializer: ProductSerializer
end
