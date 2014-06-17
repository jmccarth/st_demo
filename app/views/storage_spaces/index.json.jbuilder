json.array!(@storage_spaces) do |storage_space|
  json.extract! storage_space, :id, :amount, :comments, :server_id, :service_id
  json.url storage_space_url(storage_space, format: :json)
end
