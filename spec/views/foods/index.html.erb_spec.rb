require 'rails_helper'

RSpec.describe "foods/index", type: :view do
  before(:each) do
    assign(:foods, [
      Food.create!(
        :name => "Name",
        :proteins => "Proteins",
        :calories => "Calories"
      ),
      Food.create!(
        :name => "Name",
        :proteins => "Proteins",
        :calories => "Calories"
      )
    ])
  end

  it "renders a list of foods" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Proteins".to_s, :count => 2
    assert_select "tr>td", :text => "Calories".to_s, :count => 2
  end
end
