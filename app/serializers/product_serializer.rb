class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :inventory
<<<<<<< HEAD
  has_many :orders, through: :ordered_products
=======
  belongs_to :order
>>>>>>> a36e4b4a22ff9222caa199f741bde07918efdfed
end
