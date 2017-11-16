require 'rails_helper'

RSpec.describe "coaches/edit", type: :view do
  before(:each) do
    @coach = assign(:coach, Coach.create!(
      :name => "MyString",
      :discipline => nil,
      :user => "MyString",
      :password => "MyString"
    ))
  end

  it "renders the edit coach form" do
    render

    assert_select "form[action=?][method=?]", coach_path(@coach), "post" do

      assert_select "input#coach_name[name=?]", "coach[name]"

      assert_select "input#coach_discipline_id[name=?]", "coach[discipline_id]"

      assert_select "input#coach_user[name=?]", "coach[user]"

      assert_select "input#coach_password[name=?]", "coach[password]"
    end
  end
end
