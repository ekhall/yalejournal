json.array!(@articles) do |article|
  json.extract! article, :name, :journal, :presentation_date, :publication_date, :presentation_comments
  json.url article_url(article, format: :json)
end
