require 'rails_helper'

RSpec.describe "disciplines/edit", type: :view do
  before(:each) do
    @discipline = assign(:discipline, Discipline.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit discipline form" do
    render

    assert_select "form[action=?][method=?]", discipline_path(@discipline), "post" do

      assert_select "input#discipline_name[name=?]", "discipline[name]"
    end
  end
end
