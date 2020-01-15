json.extract! orderproduct, :id, :quantity, :order_id, :product_id, :created_at, :updated_at
json.url orderproduct_url(orderproduct, format: :json)
