json.array!(@articles) do |article|
  json.extract! article, :id, :author, :title, :body, :place, :ranking
  json.url article_url(article, format: :json)
end
