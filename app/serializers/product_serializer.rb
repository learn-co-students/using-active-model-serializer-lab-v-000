class ProductSerializer < ActiveModel::Serializer
  attributes :id, :inventory, :description, :name, :price
  binding.pry
end
