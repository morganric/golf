class VisitorsController < ApplicationController

def index
	@clubs = Club.where(:live => true)
	@hash = Gmaps4rails.build_markers(@clubs) do |club, marker|
	  marker.lat club.latitude
	  marker.lng club.longitude
	  marker.infowindow "<a href='#{club_path(club.slug)}'>#{club.name} Golf Club</a>"
	  marker.title   "i'm the title"
	  # marker.picture({
   #                :url    => "#{club.logo.url(:thumb)}",
   #                :width  => "60",
   #                :height => "60"
   #               })
	end
end

end
