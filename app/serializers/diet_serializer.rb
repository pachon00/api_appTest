class DietSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :calories
end
