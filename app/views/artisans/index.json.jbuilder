json.array!(@artisans) do |artisan|
  json.extract! artisan, :id, :description, :firstname, :lastname, :society, :phone, :location
  json.url artisan_url(artisan, format: :json)
end
