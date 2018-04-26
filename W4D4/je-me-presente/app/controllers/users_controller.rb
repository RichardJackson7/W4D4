class UsersController < ApplicationController
  def new

  end

  def create
  	@user = User.new
  	@user.user_name = params[:username]
  	@user.bio = params[:bio]
  	@user.save
  	if @user.save
         redirect_to user_path(@user)
 	else
         render '/users/erreur'
  	end
  end

  def show
  	@user = User.find(params[:id])
  end

end
