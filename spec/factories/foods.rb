FactoryGirl.define do
  factory :food do
    name FFaker::Food.fruit
	description FFaker::Food.fruit
	unit "pza"
	cuantity 1
	calories 200
 end

end
