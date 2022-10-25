require 'rails_helper'

RSpec.describe "counties/new", type: :view do
  before(:each) do
    assign(:county, County.new(
      name: "MyString",
      status: "",
      user: nil
    ))
  end

  it "renders new county form" do
    render

    assert_select "form[action=?][method=?]", counties_path, "post" do

      assert_select "input[name=?]", "county[name]"

      assert_select "input[name=?]", "county[status]"

      assert_select "input[name=?]", "county[user_id]"
    end
  end
end
