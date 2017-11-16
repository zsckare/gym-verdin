require 'rails_helper'

RSpec.describe "blogs/index", type: :view do
  before(:each) do
    assign(:blogs, [
      Blog.create!(
        :coach => nil
      ),
      Blog.create!(
        :coach => nil
      )
    ])
  end

  it "renders a list of blogs" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
