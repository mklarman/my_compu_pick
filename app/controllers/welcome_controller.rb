class WelcomeController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = current_user
		@diary = Diary.find_by_id(params[:id])
	end

	def about
	
	end

end
