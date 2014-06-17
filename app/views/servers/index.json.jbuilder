json.array!(@servers) do |server|
  json.extract! server, :id, :name, :model, :hd, :mem, :cpu, :os, :size, :location_id, :service_id
  json.url server_url(server, format: :json)
end
