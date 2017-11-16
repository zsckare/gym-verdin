require 'rails_helper'

RSpec.describe "coaches/index", type: :view do
  before(:each) do
    assign(:coaches, [
      Coach.create!(
        :name => "Name",
        :discipline => nil,
        :user => "User",
        :password => "Password"
      ),
      Coach.create!(
        :name => "Name",
        :discipline => nil,
        :user => "User",
        :password => "Password"
      )
    ])
  end

  it "renders a list of coaches" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
