class ChangeIntegerLimitInDiaries < ActiveRecord::Migration[5.1]
  def change
  	change_column :diaries, :birthdate, :integer, limit: 8
  	change_column :diaries, :address, :integer, limit: 8
  	change_column :diaries, :cell, :integer, limit: 8
  	change_column :diaries, :zipcode, :integer, limit: 8
  	change_column :diaries, :age, :integer, limit: 8
  	change_column :diaries, :partner_birthdate, :integer, limit: 8
  	change_column :diaries, :work_addr, :integer, limit: 8
  	change_column :diaries, :work_num, :integer, limit: 8
  	change_column :diaries, :apt_num, :integer, limit: 8
  	change_column :diaries, :kids, :integer, limit: 8
  	change_column :diaries, :kids_birth, :integer, limit: 8
  	change_column :diaries, :lucky_nums, :integer, limit: 8
  	change_column :diaries, :license_plate, :integer, limit: 8
  	change_column :diaries, :wake_up, :integer, limit: 8
  	change_column :diaries, :sensitive, :integer, limit: 8
  end
end

