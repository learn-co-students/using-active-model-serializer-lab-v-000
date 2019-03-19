class OrderSerializer < ActiveModel::Serializer
  has_many :products
  belongs_to :customer, :invoice
end
