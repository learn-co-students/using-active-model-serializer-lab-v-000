class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :inventory, :availability

  def availability
    if self.object.inventory == 0
      "Sold Out"
    else
      "Available"
    end
  end
end
