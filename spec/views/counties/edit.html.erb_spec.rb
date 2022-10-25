require 'rails_helper'

RSpec.describe "counties/edit", type: :view do
  before(:each) do
    @county = assign(:county, County.create!(
      name: "MyString",
      status: "",
      user: nil
    ))
  end

  it "renders the edit county form" do
    render

    assert_select "form[action=?][method=?]", county_path(@county), "post" do

      assert_select "input[name=?]", "county[name]"

      assert_select "input[name=?]", "county[status]"

      assert_select "input[name=?]", "county[user_id]"
    end
  end
end
