class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new # the form
		@user = User.new
	end

	def create # update database
		@user = User.new(user_params)

		if @user.save
  		redirect_to users_path
  	else
  		render :new
  	end
	end

	private

	def user_params
		params.require(:user).permit(:name, :email)
	end

end
