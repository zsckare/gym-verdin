require 'rails_helper'

RSpec.describe "clients/edit", type: :view do
  before(:each) do
    @client = assign(:client, Client.create!(
      :name => "MyString",
      :lastname => "MyString",
      :phone => "MyString",
      :address => "MyString",
      :coach => nil,
      :user => "MyString",
      :password => "MyString"
    ))
  end

  it "renders the edit client form" do
    render

    assert_select "form[action=?][method=?]", client_path(@client), "post" do

      assert_select "input#client_name[name=?]", "client[name]"

      assert_select "input#client_lastname[name=?]", "client[lastname]"

      assert_select "input#client_phone[name=?]", "client[phone]"

      assert_select "input#client_address[name=?]", "client[address]"

      assert_select "input#client_coach_id[name=?]", "client[coach_id]"

      assert_select "input#client_user[name=?]", "client[user]"

      assert_select "input#client_password[name=?]", "client[password]"
    end
  end
end
