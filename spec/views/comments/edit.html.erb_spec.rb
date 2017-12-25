require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :coach => nil,
      :value => "MyString"
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "input#comment_coach_id[name=?]", "comment[coach_id]"

      assert_select "input#comment_value[name=?]", "comment[value]"
    end
  end
end
