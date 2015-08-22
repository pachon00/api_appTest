class Food < ActiveRecord::Base
  has_and_belongs_to_many :groups
  validates :name, :description, :unit, :cuantity, :calories, presence: true
 end
