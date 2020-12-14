json.extract! user, :id, :name, :email, :password, :phone_num, :addr, :created_at, :updated_at
json.url user_url(user, format: :json)
