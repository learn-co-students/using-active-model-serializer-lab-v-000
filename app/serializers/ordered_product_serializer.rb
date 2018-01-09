class OrderedProductSerializer < ActiveModel::Serializer
  attributes :invoice_id
  belongs_to :product
  belongs_to :order
end
