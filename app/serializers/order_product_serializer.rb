class OrderProductSerializer < ActiveModel::Serializer
  attributes :id, :description, :inventory, :name
end
