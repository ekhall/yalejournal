json.array!(@users) do |user|
  json.extract! user, :name, :email, :encrypted_password, :salt, :admin
  json.url user_url(user, format: :json)
end
