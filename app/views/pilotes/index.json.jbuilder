json.array!(@pilotes) do |pilote|
  json.extract! pilote, :id, :name, :age
  json.url pilote_url(pilote, format: :json)
end
