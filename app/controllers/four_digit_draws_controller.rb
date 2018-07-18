class FourDigitDrawsController < ApplicationController

	def new
		@pick4 = FourDigitDraw.new
		@user = current_user

	end

	def create
	diary = Diary.find_by_id(params[:id])
	user = current_user
  	pick4 = FourDigitDraw.new(four_digit_draw_params)
    pick4.user_id = user.id
  	if pick4.save
  		redirect_back(fallback_location: about_path)
  	else
  	  	render  diaries_path
  	end

	end

	private

	def four_digit_draw_params
 		params.require(:four_digit_draw).permit(:user_id, :pick_four)
 	end
end
