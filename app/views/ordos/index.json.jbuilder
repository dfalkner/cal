json.array!(@ordos) do |ordo|
  json.extract! ordo, :code, :description
  json.url ordo_url(ordo, format: :json)
end