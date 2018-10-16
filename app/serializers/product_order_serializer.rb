class ProductOrderSerializer < ActiveModel::Serializer
  attributes :name
end
# In ProductOrderSerializer, I add the bare minimum of what I need
# for products to be embedded in an order (only the name attribute)
