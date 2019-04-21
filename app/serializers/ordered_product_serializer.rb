class OrderedProductSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :orders
  belongs_to :products
end
