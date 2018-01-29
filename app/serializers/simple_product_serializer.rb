class SimpleProductSerializer < ActiveModel::Serializer
  attributes :name, :id, :created_at
end
