require 'rails_helper'

RSpec.describe "diets/show", type: :view do
  before(:each) do
    @diet = assign(:diet, Diet.create!(
      :name => "Name",
      :description => "Description",
      :calories => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/1/)
  end
end
