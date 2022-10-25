require 'rails_helper'

RSpec.describe "citizens/edit", type: :view do
  before(:each) do
    @citizen = assign(:citizen, Citizen.create!(
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

  it "renders the edit citizen form" do
    render

    assert_select "form[action=?][method=?]", citizen_path(@citizen), "post" do

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
