json.extract! food, :id, :name, :proteins, :calories, :created_at, :updated_at
json.url food_url(food, format: :json)
