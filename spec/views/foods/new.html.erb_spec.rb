require 'rails_helper'

RSpec.describe "foods/new", type: :view do
  before(:each) do
    assign(:food, Food.new(
      :name => "MyString",
      :description => "MyString",
      :unit => "MyString",
      :cuantity => 1,
      :calories => 1
    ))
  end

  it "renders new food form" do
    render

    assert_select "form[action=?][method=?]", foods_path, "post" do

      assert_select "input#food_name[name=?]", "food[name]"

      assert_select "input#food_description[name=?]", "food[description]"

      assert_select "input#food_unit[name=?]", "food[unit]"

      assert_select "input#food_cuantity[name=?]", "food[cuantity]"

      assert_select "input#food_calories[name=?]", "food[calories]"
    end
  end
end
