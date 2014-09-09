class VisitorsController < ApplicationController

def index
	@clubs = Club.all.as_json
end

end
