json.array!(@orders) do |order|
  json.extract! order, :id, :customer_id, :start_date, :end_date, :status, :notes
  json.url order_url(order, format: :json)
end
