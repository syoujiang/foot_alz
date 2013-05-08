json.array!(@footballs) do |football|
  json.extract! football, :s_start, :s_end, :p_start, :p_end, :f_start, :f_end, :tmp, :tmp2
  json.url football_url(football, format: :json)
end