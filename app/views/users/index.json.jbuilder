json.array!(@users) do |user|
  json.extract! user, :id, :firstname, :lastname, :phone, :mail, :location, :cardnumber, :carddate, :cardback
  json.url user_url(user, format: :json)
end
