require 'rails_helper'

RSpec.describe "assessments/index", type: :view do
  before(:each) do
    assign(:assessments, [
      Assessment.create!(
        :points => "Points",
        :coach => nil
      ),
      Assessment.create!(
        :points => "Points",
        :coach => nil
      )
    ])
  end

  it "renders a list of assessments" do
    render
    assert_select "tr>td", :text => "Points".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
