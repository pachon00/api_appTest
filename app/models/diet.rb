class Diet < ActiveRecord::Base
validates :name, :description, :calories, presence: true
end
