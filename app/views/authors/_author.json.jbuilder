json.extract! author, :id, :name, :country, :sex, :note, :created_at, :updated_at
json.url author_url(author, format: :json)
