require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        postal_code: "Postal Code",
        street: "Street",
        district: "District",
        city: "City",
        state: "State",
        ibge_code: "Ibge Code",
        citizen: ""
      ),
      Address.create!(
        postal_code: "Postal Code",
        street: "Street",
        district: "District",
        city: "City",
        state: "State",
        ibge_code: "Ibge Code",
        citizen: ""
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", text: "Postal Code".to_s, count: 2
    assert_select "tr>td", text: "Street".to_s, count: 2
    assert_select "tr>td", text: "District".to_s, count: 2
    assert_select "tr>td", text: "City".to_s, count: 2
    assert_select "tr>td", text: "State".to_s, count: 2
    assert_select "tr>td", text: "Ibge Code".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
