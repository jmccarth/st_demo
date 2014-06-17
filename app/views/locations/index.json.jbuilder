json.array!(@locations) do |location|
  json.extract! location, :id, :room, :capacity
  json.url location_url(location, format: :json)
end
