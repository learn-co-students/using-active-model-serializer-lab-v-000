class OrderProductSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :products
end
