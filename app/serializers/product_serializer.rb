class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :inventory
  # belongs_to :order
  # belongs_to :order, serializer: OrderSerializer

end
