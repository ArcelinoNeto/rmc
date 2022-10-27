json.extract! address, :id, :postal_code, :street, :district, :city, :state, :ibge_code, :citizen, :created_at, :updated_at
json.url address_url(address, format: :json)
