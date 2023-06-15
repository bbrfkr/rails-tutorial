json.extract! article, :id, :title, :description, :deleted, :created_at, :updated_at
json.url article_url(article, format: :json)
