require 'rails_helper'

RSpec.describe "foods/show", type: :view do
  before(:each) do
    @food = assign(:food, Food.create!(
      :name => "Name",
      :proteins => "Proteins",
      :calories => "Calories"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Proteins/)
    expect(rendered).to match(/Calories/)
  end
end
