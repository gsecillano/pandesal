json.array!(@orders) do |order|
  json.extract! order, :id, :customer_id, :pcs, :unit, :delivery_date, :amount, :amount_paid, :payment_date
  json.url order_url(order, format: :json)
end
