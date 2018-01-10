require 'rails_helper'

RSpec.describe "notes/show", type: :view do
  before(:each) do
    @note = assign(:note, Note.create!(
      :client => nil,
      :coach => nil,
      :details => "Details",
      :exercise => "Exercise"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Details/)
    expect(rendered).to match(/Exercise/)
  end
end
