require 'rails_helper'

RSpec.describe "clients/index", type: :view do
  before(:each) do
    assign(:clients, [
      Client.create!(
        :name => "Name",
        :lastname => "Lastname",
        :phone => "Phone",
        :address => "Address",
        :coach => nil,
        :user => "User",
        :password => "Password"
      ),
      Client.create!(
        :name => "Name",
        :lastname => "Lastname",
        :phone => "Phone",
        :address => "Address",
        :coach => nil,
        :user => "User",
        :password => "Password"
      )
    ])
  end

  it "renders a list of clients" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
