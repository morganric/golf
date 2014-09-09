json.array!(@courses) do |course|
  json.extract! course, :id, :club_id, :name
  json.url course_url(course, format: :json)
end
