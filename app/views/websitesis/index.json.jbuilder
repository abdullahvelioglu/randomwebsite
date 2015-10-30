json.array!(@websitesis) do |websitesi|
  json.extract! websitesi, :id, :adresi
  json.url websitesi_url(websitesi, format: :json)
end
