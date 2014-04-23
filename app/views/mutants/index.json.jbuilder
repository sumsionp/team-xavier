json.array!(@mutants) do |mutant|
  json.extract! mutant, :id, :name, :power
  json.url mutant_url(mutant, format: :json)
end
