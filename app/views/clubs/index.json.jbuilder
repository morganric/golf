json.array!(@clubs) do |club|
  json.extract! club, :id, :name, :about, :banner, :logo, :address, :zip_code, :country, :phone_number, :latitude, :longitude
  json.url club_url(club, format: :json)
end
