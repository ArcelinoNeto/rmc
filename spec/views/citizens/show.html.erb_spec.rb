require 'rails_helper'

RSpec.describe "citizens/show", type: :view do
  before(:each) do
    @citizen = assign(:citizen, Citizen.create!(
      full_name: "Full Name",
      cpf: "Cpf",
      cns: "Cns",
      email: "Email",
      birthdate: "Birthdate",
      phone: "Phone",
      status: "Status",
      photograph: "Photograph",
      county: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Full Name/)
    expect(rendered).to match(/Cpf/)
    expect(rendered).to match(/Cns/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Birthdate/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Photograph/)
    expect(rendered).to match(//)
  end
end
