json.extract! model, :id, :foodItem, :name, :description, :price, :section, :remote_image_url, :created_at, :updated_at
json.url model_url(model, format: :json)