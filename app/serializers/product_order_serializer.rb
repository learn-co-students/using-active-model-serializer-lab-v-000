class ProductOrderSerializer < ActiveModel::Serializer
  attributes :id, :invoice, :customer
end
