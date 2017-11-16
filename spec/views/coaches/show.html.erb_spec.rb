require 'rails_helper'

RSpec.describe "coaches/show", type: :view do
  before(:each) do
    @coach = assign(:coach, Coach.create!(
      :name => "Name",
      :discipline => nil,
      :user => "User",
      :password => "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/User/)
    expect(rendered).to match(/Password/)
  end
end
