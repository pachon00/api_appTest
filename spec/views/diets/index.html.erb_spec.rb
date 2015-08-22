require 'rails_helper'

RSpec.describe "diets/index", type: :view do
  before(:each) do
    assign(:diets, [
      Diet.create!(
        :name => "Name",
        :description => "Description",
        :calories => 1
      ),
      Diet.create!(
        :name => "Name",
        :description => "Description",
        :calories => 1
      )
    ])
  end

  it "renders a list of diets" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
