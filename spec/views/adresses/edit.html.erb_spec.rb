require 'rails_helper'

RSpec.describe "adresses/edit", type: :view do
  before(:each) do
    @adress = assign(:adress, Adress.create!(
      postal_code: "MyString",
      street: "MyString",
      district: "MyString",
      city: "MyString",
      state: "MyString",
      ibge_code: "MyString",
      citizen: ""
    ))
  end

  it "renders the edit adress form" do
    render

    assert_select "form[action=?][method=?]", adress_path(@adress), "post" do

      assert_select "input[name=?]", "adress[postal_code]"

      assert_select "input[name=?]", "adress[street]"

      assert_select "input[name=?]", "adress[district]"

      assert_select "input[name=?]", "adress[city]"

      assert_select "input[name=?]", "adress[state]"

      assert_select "input[name=?]", "adress[ibge_code]"

      assert_select "input[name=?]", "adress[citizen]"
    end
  end
end
