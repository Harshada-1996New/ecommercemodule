json.extract! order, :id, :ord_no, :ord_tracking_no, :payment_total, :ord_type, :created_at, :updated_at
json.url order_url(order, format: :json)
