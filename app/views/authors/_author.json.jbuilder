json.extract! author, :id, :name, :description, :created_at, :updated_at
json.url author_url(author, format: :json)