require 'rails_helper'

RSpec.describe "groups/show", type: :view do
  before(:each) do
    @group = assign(:group, Group.create!(
      :name => "Name",
      :day => "Day",
      :time => "2015-08-22"
    ))
  end

  it "renders attributes in <p>" do
#    render
#    expect(rendered).to match(/Name/)
#    expect(rendered).to match(/Day/)
  end
end
