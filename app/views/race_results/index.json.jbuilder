json.array!(@race_results) do |race_result|
  json.extract! race_result, :id
  json.url race_result_url(race_result, format: :json)
end
