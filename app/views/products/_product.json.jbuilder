json.extract! product, :id, :prd_sku, :prd_name, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
