class ThreeDigitDrawsController < ApplicationController
	def new
		@pick3 = ThreeDigitDraw.new
		@user = current_user

	end

	def create
	user = current_user
  	pick3 = ThreeDigitDraw.new(three_digit_draw_params)
    pick3.user_id = user.id
    diary = Diary.find_by_id(params[:id])
  	if pick3.save
  		redirect_to states_path
  	else
  	  	render  diaries_path
  	end

	end

	private

	def three_digit_draw_params
 		params.require(:three_digit_draw).permit(:user_id, :pick_three)
 	end

 	def diary_params
 		params.require(:diary).permit(:address, :cell, :birthdate, :zipcode, :age, :partner_birthdate, :work_addr, :work_num, :apt_num, :kids, :kids_birth, :lucky_nums, :license_plate, :wake_up, :sensitive, :user_id)
 	end
end
