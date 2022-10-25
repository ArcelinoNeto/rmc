require 'rails_helper'

RSpec.describe "citizens/new", type: :view do
  before(:each) do
    assign(:citizen, Citizen.new(
      full_name: "MyString",
      cpf: "MyString",
      cns: "MyString",
      email: "MyString",
      birthdate: "MyString",
      phone: "MyString",
      status: "MyString",
      photograph: "MyString",
      county: nil
    ))
  end

  it "renders new citizen form" do
    render

    assert_select "form[action=?][method=?]", citizens_path, "post" do

      assert_select "input[name=?]", "citizen[full_name]"

      assert_select "input[name=?]", "citizen[cpf]"

      assert_select "input[name=?]", "citizen[cns]"

      assert_select "input[name=?]", "citizen[email]"

      assert_select "input[name=?]", "citizen[birthdate]"

      assert_select "input[name=?]", "citizen[phone]"

      assert_select "input[name=?]", "citizen[status]"

      assert_select "input[name=?]", "citizen[photograph]"

      assert_select "input[name=?]", "citizen[county_id]"
    end
  end
end
