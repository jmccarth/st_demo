json.array!(@users) do |user|
  json.extract! user, :id, :admin, :username
  json.url user_url(user, format: :json)
end
