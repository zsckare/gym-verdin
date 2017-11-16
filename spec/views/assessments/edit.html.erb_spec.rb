require 'rails_helper'

RSpec.describe "assessments/edit", type: :view do
  before(:each) do
    @assessment = assign(:assessment, Assessment.create!(
      :points => "MyString",
      :coach => nil
    ))
  end

  it "renders the edit assessment form" do
    render

    assert_select "form[action=?][method=?]", assessment_path(@assessment), "post" do

      assert_select "input#assessment_points[name=?]", "assessment[points]"

      assert_select "input#assessment_coach_id[name=?]", "assessment[coach_id]"
    end
  end
end
