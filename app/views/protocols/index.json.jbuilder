json.array!(@protocols) do |protocol|
  json.extract! protocol, 
  json.url protocol_url(protocol, format: :json)
end
