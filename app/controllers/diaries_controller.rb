class DiariesController < ApplicationController

	def index
		@diaries = Diary.all
	end

	def new
  	@diary = Diary.new
  	@user = current_user
    @pick3 = ThreeDigitDraw.new
    @pick4 = FourDigitDraw.new
    @mega = MegaDraw.new
  end

  def show
    @user = current_user
    @diary2 = Diary.find_by_id(params[:id])
    @pick3 = ThreeDigitDraw.new
    @pick4 = FourDigitDraw.new
    @mega = MegaDraw.new
    @hit = ""
  end


  def create
  	user = current_user
  	diary = Diary.new(diary_params)
    diary.user_id = user.id
  	if diary.save
  		redirect_to diary_path(diary.id)
  	else
  	  	render  new_diary_path
  	end

  end

  def edit
    @diary2 = Diary.find_by_id(params[:id])
  end

  def update
    @diary = Diary.find(params[:id])
    @diary.user_id = current_user.id
      if @diary.update(diary_params)   
        redirect_to diary_path(@diary.id)
      else 
        render diaries_path
      end
  end



  private

  def diary_params
 		params.require(:diary).permit(:address, :cell, :birthdate, :zipcode, :age, :partner_birthdate, :work_addr, :work_num, :apt_num, :kids, :kids_birth, :lucky_nums, :license_plate, :wake_up, :sensitive, :user_id)
 	end
  
  def four_digit_draw_params
    params.require(:four_digit_draw).permit(:user_id, :pick_four)
  end
  
  def three_digit_draw_params
    params.require(:three_digit_draw).permit(:user_id, :pick_three)
  end

  def mega_draw_params
    params.require(:mega_draw).permit(:user_id, :mega_draw)
  end

end
