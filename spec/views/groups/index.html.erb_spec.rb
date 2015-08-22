require 'rails_helper'

RSpec.describe "groups/index", type: :view do
  before(:each) do
    assign(:groups, [
      Group.create!(
        :name => "Name",
        :day => "Day",
        :time => "2015-08-22"
      ),
      Group.create!(
        :name => "Name",
        :day => "Day",
        :time => "2015-08-22"
      )
    ])
  end

  it "renders a list of groups" do
    #render
    #assert_select "tr>td", :text => "Name".to_s, :count => 2
    #assert_select "tr>td", :text => "Day".to_s, :count => 2
  end
end
