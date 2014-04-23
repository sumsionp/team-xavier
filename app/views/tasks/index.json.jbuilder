json.array!(@tasks) do |task|
  json.extract! task, :id, :description, :deadline, :team
  json.url task_url(task, format: :json)
end
