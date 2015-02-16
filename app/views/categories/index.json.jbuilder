json.array!(@categories) do |category|
  json.extract! category, :id, :category, :weight
  json.url category_url(category, format: :json)
end
