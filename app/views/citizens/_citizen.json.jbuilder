json.extract! citizen, :id, :full_name, :cpf, :cns, :email, :birthdate, :phone, :status, :photograph, :county_id, :created_at, :updated_at
json.url citizen_url(citizen, format: :json)
