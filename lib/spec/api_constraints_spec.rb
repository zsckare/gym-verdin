require 'spec_helper'

describe ApiConstraints do
  # Api versions
  let(:api_constraints_v1) { ApiConstraints.new(version: 1, default: true) }
  describe "matches?" do
    # Test for find the header Accept with the api version
    it "returns true when the version matches the 'Accept' header" do
      request = double(host: "#{ENV['API_HOST']}",
                       headers: {"Accept" => "application/#{ENV['API_HOST']}.v1"})
      api_constraints_v1.matches?(request).should be_truthy
    end

    # Test for match the default api version
    it "returns the default version when 'default' option is specified" do
      request = double(host: ENV['API_HOST'])
      api_constraints_v1.matches?(request).should be_truthy
    end

  end
end
