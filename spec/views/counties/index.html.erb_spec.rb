require 'rails_helper'

RSpec.describe "counties/index", type: :view do
  before(:each) do
    assign(:counties, [
      County.create!(
        name: "Name",
        status: "",
        user: nil
      ),
      County.create!(
        name: "Name",
        status: "",
        user: nil
      )
    ])
  end

  it "renders a list of counties" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
