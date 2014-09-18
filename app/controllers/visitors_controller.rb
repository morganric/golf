class VisitorsController < ApplicationController

	include ActionView::Helpers::AssetUrlHelper

def index
	@clubs = Club.where(:live => true)
	@hash = Gmaps4rails.build_markers(@clubs) do |club, marker|
	  marker.lat club.latitude
	  marker.lng club.longitude
	  marker.infowindow "<a href='#{club_path(club.slug)}'>#{club.name} Golf Club</a>"
	  # marker.picture({
   #                :url    => asset_url('assets/golf-clwb-logo.png'),
   #                :width  => "60",
   #                :height => "60"
   #               })
	end
end

end
