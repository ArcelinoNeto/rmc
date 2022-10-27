require 'rails_helper'

RSpec.describe "addresses/new", type: :view do
  before(:each) do
    assign(:address, Address.new(
      postal_code: "MyString",
      street: "MyString",
      district: "MyString",
      city: "MyString",
      state: "MyString",
      ibge_code: "MyString",
      citizen: ""
    ))
  end

  it "renders new address form" do
    render

    assert_select "form[action=?][method=?]", addresses_path, "post" do

      assert_select "input[name=?]", "address[postal_code]"

      assert_select "input[name=?]", "address[street]"

      assert_select "input[name=?]", "address[district]"

      assert_select "input[name=?]", "address[city]"

      assert_select "input[name=?]", "address[state]"

      assert_select "input[name=?]", "address[ibge_code]"

      assert_select "input[name=?]", "address[citizen]"
    end
  end
end
