require 'rails_helper'

RSpec.describe "foods/edit", type: :view do
  before(:each) do
    @food = assign(:food, Food.create!(
      :name => "MyString",
      :proteins => "MyString",
      :calories => "MyString"
    ))
  end

  it "renders the edit food form" do
    render

    assert_select "form[action=?][method=?]", food_path(@food), "post" do

      assert_select "input#food_name[name=?]", "food[name]"

      assert_select "input#food_proteins[name=?]", "food[proteins]"

      assert_select "input#food_calories[name=?]", "food[calories]"
    end
  end
end
