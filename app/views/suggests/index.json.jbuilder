json.array!(@suggests) do |suggest|
  json.extract! suggest, :article_id, :user_id
  json.url suggest_url(suggest, format: :json)
end
