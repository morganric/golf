json.array!(@coords) do |coord|
  json.extract! coord, :id, :latitude, :longitude, :hole_id
  json.url coord_url(coord, format: :json)
end
