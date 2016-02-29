class HomeController < ApplicationController
	before_action:authenticate_user!
	
	def index
  		@users = User.all
    	@hash = Gmaps4rails.build_markers(@users) do |user, marker|
      		marker.lat user.latitude
      		marker.lng user.longitude
      		
    	end
    end

    def show
    	@user = User.find(params[:id])
    end
  

	
end
