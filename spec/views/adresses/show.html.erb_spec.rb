require 'rails_helper'

RSpec.describe "adresses/show", type: :view do
  before(:each) do
    @adress = assign(:adress, Adress.create!(
      postal_code: "Postal Code",
      street: "Street",
      district: "District",
      city: "City",
      state: "State",
      ibge_code: "Ibge Code",
      citizen: ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Postal Code/)
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/District/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Ibge Code/)
    expect(rendered).to match(//)
  end
end
