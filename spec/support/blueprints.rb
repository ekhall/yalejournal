require 'machinist/active_record'

User.blueprint do
  email { "user#{sn}" }
  password { "password" }
end

Protocol.blueprint do
  # Attributes here
end
