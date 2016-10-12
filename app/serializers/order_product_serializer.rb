class OrderProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :inventory
end
