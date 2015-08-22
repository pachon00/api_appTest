class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :unit, :cuantity, :calories
end
