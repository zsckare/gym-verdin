require 'rails_helper'

RSpec.describe "clients/show", type: :view do
  before(:each) do
    @client = assign(:client, Client.create!(
      :name => "Name",
      :lastname => "Lastname",
      :phone => "Phone",
      :address => "Address",
      :coach => nil,
      :user => "User",
      :password => "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Lastname/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(//)
    expect(rendered).to match(/User/)
    expect(rendered).to match(/Password/)
  end
end
