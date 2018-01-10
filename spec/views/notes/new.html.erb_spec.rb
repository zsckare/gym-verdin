require 'rails_helper'

RSpec.describe "notes/new", type: :view do
  before(:each) do
    assign(:note, Note.new(
      :client => nil,
      :coach => nil,
      :details => "MyString",
      :exercise => "MyString"
    ))
  end

  it "renders new note form" do
    render

    assert_select "form[action=?][method=?]", notes_path, "post" do

      assert_select "input#note_client_id[name=?]", "note[client_id]"

      assert_select "input#note_coach_id[name=?]", "note[coach_id]"

      assert_select "input#note_details[name=?]", "note[details]"

      assert_select "input#note_exercise[name=?]", "note[exercise]"
    end
  end
end
