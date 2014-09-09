json.array!(@tees) do |tee|
  json.extract! tee, :id, :type, :par, :length, :hole_id
  json.url tee_url(tee, format: :json)
end
