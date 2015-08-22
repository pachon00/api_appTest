class Food < ActiveRecord::Base
  validates :name, :description, :unit, :cuantity, :calories, presence: true
end
