json.array!(@foottypes) do |foottype|
  json.extract! foottype, :name
  json.url foottype_url(foottype, format: :json)
end