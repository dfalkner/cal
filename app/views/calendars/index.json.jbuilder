json.array!(@calendars) do |calendar|
  json.extract! calendar, :date, :ordo_id, :celebration_id
  json.url calendar_url(calendar, format: :json)
end