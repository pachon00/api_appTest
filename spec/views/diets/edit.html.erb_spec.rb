require 'rails_helper'

RSpec.describe "diets/edit", type: :view do
  before(:each) do
    @diet = assign(:diet, Diet.create!(
      :name => "MyString",
      :description => "MyString",
      :calories => 1
    ))
  end

  it "renders the edit diet form" do
    render

    assert_select "form[action=?][method=?]", diet_path(@diet), "post" do

      assert_select "input#diet_name[name=?]", "diet[name]"

      assert_select "input#diet_description[name=?]", "diet[description]"

      assert_select "input#diet_calories[name=?]", "diet[calories]"
    end
  end
end
