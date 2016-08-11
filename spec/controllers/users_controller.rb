require 'spec_helper'
require 'devise'

describe Users, :type => :controller do
  context "for authenticated users" do
    current_user = login_user

    it "should have a current_user" do
      expect(current_user).to_not eq(nil)
    end

  end
end
