json.extract! client, :id, :name, :lastname, :phone, :address, :coach_id, :user, :password, :created_at, :updated_at
json.url client_url(client, format: :json)
