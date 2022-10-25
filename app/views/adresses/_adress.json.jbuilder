json.extract! adress, :id, :postal_code, :street, :district, :city, :state, :ibge_code, :citizen, :created_at, :updated_at
json.url adress_url(adress, format: :json)
