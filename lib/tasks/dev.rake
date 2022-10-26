namespace :dev do
  desc "Configurando ambiente de desenvolvimento e teste"
  task setup: :environment do
    puts "Zerando a base..."
    
    %x(rails db:drop db:create db:migrate)
    
    puts "Base zerada com sucesso!"
    puts " "
    
    puts "Cadastrando Usuários Admin!"

    User.create!(
      name: 'Admin',
      email: 'admin@admin.com',
      role: 0,
      password: "123456",
      password_confirmation: "123456"
      )
      
    puts "Usuários Admin cadastrados com sucesso!"
    puts " "
    
    
    puts "Cadastrando Usuários!"

    9.times do |i|
      password = Faker::Internet.password(min_length: 8)
      User.create!(
        name: Faker::Name.first_name,
        email: Faker::Internet.email,
        role: 1,
        password: password,
        password_confirmation: password
      )
    end
    puts "Usuários cadastrados com sucesso!"
    puts " "


    puts "Cadastrando Município!"

    10.times do |i|
      County.create!(
        name: Faker::Address.city,
        status: 0,
        user: User.all.sample
      )
    end
    puts "Município cadastrados com sucesso!"
    puts " "
    
    puts "Cadastrando Cidadões!"

    10.times do |i|
      Faker::Config.locale = 'pt-BR'
      Citizen.create!(
        full_name: Faker::Name.name,
        cpf: Faker::Number.number(digits: 11),
        cns: Faker::Number.number(digits: 11),
        email: Faker::Internet.email,
        birthdate: Faker::Date.birthday(min_age: 18, max_age: 65),
        phone: Faker::PhoneNumber.cell_phone,
        status: 0,
        photograph: Faker::File.mime_type(media_type: 'image'),
        county: County.all.sample        
      )
    end
    puts "Cidadões cadastradas com sucesso!"
    puts " "
    
    puts "Cadastrando Endereços!"

    10.times do |i|
      Adress.create!(
        postal_code: Faker::Address.postcode,
        street: Faker::Address.street_name,
        district: Faker::Address.community,
        city: Faker::Address.city,
        state: Faker::Address.state,
        ibge_code: Faker::Number.number(digits: 10),
        citizen: Citizen.all.sample
      )
    end
    puts "Endereços cadastradas com sucesso!"
  end

end
