json.array!(@rack_spaces) do |rack_space|
  json.extract! rack_space, :id, :size, :location_id
  json.url rack_space_url(rack_space, format: :json)
end
