require 'rails_helper'

RSpec.describe "blogs/show", type: :view do
  before(:each) do
    @blog = assign(:blog, Blog.create!(
      :coach => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
