class DiariesController < ApplicationController

	def index
		@diaries = Diary.all
	end

	def new
  	@diary = Diary.new
  	@user = current_user
  end

  def show
    @user = current_user
    @diary2 = Diary.find(params[:id])

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

  	@concatination = params[:diary][:address] << params[:diary][:age]
  	puts @concatination
  end

  def edit
    @diary = Diary.find_by_id(params[:id])
  end

  def update
    @diary = Diary.find(params[:id])
    @diary.user_id = current_user.id
      if @diary.update(diary_params)   
        redirect_to diary_path
      else 
        render users_path
      end
  end



  private

  def diary_params
 		params.require(:diary).permit(:address, :cell, :birthdate, :zipcode, :age, :partner_birthdate, :work_addr, :work_num, :apt_num, :kids, :kids_birth, :lucky_nums, :license_plate, :wake_up, :sensitive, :user_id)
 	end
end
