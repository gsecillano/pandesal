json.array!(@customers) do |customer|
  json.extract! customer, :id, :email, :firstname, :lastname, :password_hash, :salt, :address, :registration_key
  json.url customer_url(customer, format: :json)
end
