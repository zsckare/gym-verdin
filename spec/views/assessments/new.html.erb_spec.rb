require 'rails_helper'

RSpec.describe "assessments/new", type: :view do
  before(:each) do
    assign(:assessment, Assessment.new(
      :points => "MyString",
      :coach => nil
    ))
  end

  it "renders new assessment form" do
    render

    assert_select "form[action=?][method=?]", assessments_path, "post" do

      assert_select "input#assessment_points[name=?]", "assessment[points]"

      assert_select "input#assessment_coach_id[name=?]", "assessment[coach_id]"
    end
  end
end
