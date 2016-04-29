json.array!(@products) do |product|
  json.extract! product, :id, :Title, :Description, :Image_url, :price, :category
  json.url product_url(product, format: :json)
end
