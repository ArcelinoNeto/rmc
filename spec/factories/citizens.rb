FactoryBot.define do
  factory :citizen do
    full_name { "MyString" }
    cpf { "MyString" }
    cns { "MyString" }
    email { "MyString" }
    birthdate { "MyString" }
    phone { "MyString" }
    status { "MyString" }
    photograph { "MyString" }
    county { nil }
  end
end
