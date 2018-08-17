class OrderedProductsSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :order
  belongs_to :product, serializer: SimpleProductSerializer
end
