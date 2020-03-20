class OrderSerializer < ActiveModel::Serializer
  has_many :products, serializer: SimpleProductSerializer
  attributes :id, :created_at

end
