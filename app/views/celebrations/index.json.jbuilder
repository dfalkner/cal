json.array!(@celebrations) do |celebration|
  json.extract! celebration, :label, :description, :rank_id, :color_id, :season_id, :ordo_id, :kind, :rule
  json.url celebration_url(celebration, format: :json)
end