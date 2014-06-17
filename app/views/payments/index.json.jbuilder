json.array!(@payments) do |payment|
  json.extract! payment, :id, :user_id, :accounttype, :accountnum, :paymentdate, :amount, :service_id
  json.url payment_url(payment, format: :json)
end
