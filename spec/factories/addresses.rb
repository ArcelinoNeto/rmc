FactoryBot.define do
  factory :address do
    postal_code { "MyString" }
    street { "MyString" }
    district { "MyString" }
    city { "MyString" }
    state { "MyString" }
    ibge_code { "MyString" }
    citizen { "" }
  end
end
