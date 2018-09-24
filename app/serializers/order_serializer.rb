class OrderSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :invoice
  has_many :ordered_products
  has_many :products, :through => :ordered_products
  belongs_to :customer
end
