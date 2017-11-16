require 'rails_helper'

RSpec.describe "assessments/show", type: :view do
  before(:each) do
    @assessment = assign(:assessment, Assessment.create!(
      :points => "Points",
      :coach => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Points/)
    expect(rendered).to match(//)
  end
end
