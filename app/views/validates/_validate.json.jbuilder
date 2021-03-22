json.extract! validate, :id, :name, :password, :email, :city, :state, :pincode, :created_at, :updated_at
json.url validate_url(validate, format: :json)
