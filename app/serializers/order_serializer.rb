class OrderSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :test
  has_many :products
  def test
    binding.pry
  end
end
