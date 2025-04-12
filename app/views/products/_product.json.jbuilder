json.extract! product, :id, :name, :description, :available_quantity, :minimal_quantity, :alias, :created_at, :updated_at
json.url product_url(product, format: :json)
