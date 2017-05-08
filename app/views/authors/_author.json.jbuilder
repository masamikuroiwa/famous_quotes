json.extract! author, :id, :name, :country, :note, :created_at, :updated_at
json.url author_url(author, format: :json)
