json.array!(@comerrs) do |comerr|
  json.extract! comerr, :id, :message, :description, :resolution
  json.url comerr_url(comerr, format: :json)
end
