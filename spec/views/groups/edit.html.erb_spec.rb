require 'rails_helper'

RSpec.describe "groups/edit", type: :view do
  before(:each) do
    @group = assign(:group, Group.create!(
      :name => "MyString",
      :day => "MyString",
      :time => "2015-08-22"
    ))
  end

  it "renders the edit group form" do
    #render

   # assert_select "form[action=?][method=?]", group_path(@group), "post" do

    #  assert_select "input#group_name[name=?]", "group[name]"

     # assert_select "input#group_day[name=?]", "group[day]"

    #end
  end
end
