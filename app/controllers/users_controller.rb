class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def new # the form to create a new user
		@user = User.new
	end

	def create # add new user to database
		@user = User.new(user_params)

		if @user.save
  		redirect_to users_path
  	else
  		render :new
  	end
	end

	def show # show a single user's details, find by url parameter
		@user = User.find(params[:id])
	end

	private

	def user_params
		params.require(:user).permit(:name, :email)
	end

end
