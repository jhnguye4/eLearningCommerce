json.extract! courses_in_cart, :id, :courses_id, :cart, :created_at, :updated_at
json.url courses_in_cart_url(courses_in_cart, format: :json)
