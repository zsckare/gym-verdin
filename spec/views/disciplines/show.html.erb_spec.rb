require 'rails_helper'

RSpec.describe "disciplines/show", type: :view do
  before(:each) do
    @discipline = assign(:discipline, Discipline.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
