json.array!(@ordos) do |ordo|
  json.extract! ordo, :label, :description
  json.url ordo_url(ordo, format: :json)
end