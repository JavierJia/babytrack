json.array!(@outs) do |out|
  json.extract! out, :id, :kind, :descrp
  json.url out_url(out, format: :json)
end
