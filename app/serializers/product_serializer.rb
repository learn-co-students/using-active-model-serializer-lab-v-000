class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :inventory, :description, :created_at
  has_many :orders

end
