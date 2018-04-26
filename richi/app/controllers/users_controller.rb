class UsersController < ApplicationController
	
	def new
 	end

 	def create
	    @user = User.new
	   	@user.username = params[:username]
	   	@user.bio = params[:bio]
	   	@user.save

	   	redirect_to "/show"
 	end

 	def show
 		@user = User.find(params[:id])
 	end 

end
