class ProductSerializer < ActiveModel::Serializer 
    attributes :name, :price, :inventory, :description
end 