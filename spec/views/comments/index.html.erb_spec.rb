require 'rails_helper'

RSpec.describe "comments/index", type: :view do
  before(:each) do
    assign(:comments, [
      Comment.create!(
        :coach => nil,
        :value => "Value"
      ),
      Comment.create!(
        :coach => nil,
        :value => "Value"
      )
    ])
  end

  it "renders a list of comments" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Value".to_s, :count => 2
  end
end
