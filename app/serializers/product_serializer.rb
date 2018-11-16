class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :inventory, :description, :created_at
  # belongs_to :order
end
