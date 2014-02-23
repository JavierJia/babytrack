json.array!(@feedings) do |feeding|
  json.extract! feeding, :id, :kind, :volumn
  json.url feeding_url(feeding, format: :json)
end
