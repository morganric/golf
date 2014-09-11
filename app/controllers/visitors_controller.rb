class VisitorsController < ApplicationController

def index
	@clubs = Club.all
	@hash = Gmaps4rails.build_markers(@clubs) do |club, marker|
	  marker.lat club.latitude
	  marker.lng club.longitude
	  marker.infowindow "<a href='#{club_path(club.slug)}'>#{club.name}</a>"
	end
end

end
