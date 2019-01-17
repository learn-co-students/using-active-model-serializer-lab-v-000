class OrderSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :customer
  belongs_to :invoice
  has_many :products, through: :order_products
end
