json.array!(@virtual_machines) do |virtual_machine|
  json.extract! virtual_machine, :id, :hostname, :os, :hd, :mem, :cpu, :comments, :server_id, :service_id
  json.url virtual_machine_url(virtual_machine, format: :json)
end
