json.array!(@teams) do |team|
  json.extract! team, :id, :name, :team_lead
  json.url team_url(team, format: :json)
end
