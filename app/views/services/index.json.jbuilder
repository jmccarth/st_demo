json.array!(@services) do |service|
  json.extract! service, :id, :type, :user_id, :servicetype_id, :startdate, :enddate, :cost
  json.url service_url(service, format: :json)
end
