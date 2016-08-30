class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :inventory
  has_many :orders
  class OrderSerializer < ActiveModel::Serializer
    attributes :id, :invoice_id
    has_many :products
    class ProductSerializer < ActiveModel::Serializer
      attributes :id, :name
    end
  end
end
