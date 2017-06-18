json.extract! order, :id, :customer_name, :customer_address, :customer_phone, :food_item_id, :created_at, :updated_at
json.url order_url(order, format: :json)
