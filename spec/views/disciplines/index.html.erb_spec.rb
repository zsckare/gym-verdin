require 'rails_helper'

RSpec.describe "disciplines/index", type: :view do
  before(:each) do
    assign(:disciplines, [
      Discipline.create!(
        :name => "Name"
      ),
      Discipline.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of disciplines" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
