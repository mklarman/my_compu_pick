class MegaDrawsController < ApplicationController
	def new
		@mega = MegaDraw.new
		@user = current_user

	end

	def create
	diary = Diary.find_by_id(params[:id])
	user = current_user
  	mega = MegaDraw.new(mega_draw_params)
    mega.user_id = user.id
  	if mega.save
  		redirect_back(fallback_location: states_path)
  	else
  	  	render  diaries_path
  	end

	end

	private

	def mega_draw_params
 		params.require(:mega_draw).permit(:user_id, :mega_draw)
 	end
end
