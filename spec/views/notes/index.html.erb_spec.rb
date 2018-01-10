require 'rails_helper'

RSpec.describe "notes/index", type: :view do
  before(:each) do
    assign(:notes, [
      Note.create!(
        :client => nil,
        :coach => nil,
        :details => "Details",
        :exercise => "Exercise"
      ),
      Note.create!(
        :client => nil,
        :coach => nil,
        :details => "Details",
        :exercise => "Exercise"
      )
    ])
  end

  it "renders a list of notes" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Details".to_s, :count => 2
    assert_select "tr>td", :text => "Exercise".to_s, :count => 2
  end
end
