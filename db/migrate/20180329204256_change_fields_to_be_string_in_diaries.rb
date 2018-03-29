class ChangeFieldsToBeStringInDiaries < ActiveRecord::Migration[5.1]
  def change
  		
  		change_column :diaries, :address, :string
  		change_column :diaries, :cell, :string
  		change_column :diaries, :birthdate, :string
  		change_column :diaries, :zipcode, :string
  		change_column :diaries, :age, :string
  		change_column :diaries, :partner_birthdate, :string
  		change_column :diaries, :work_addr, :string
  		change_column :diaries, :work_num, :string
  		change_column :diaries, :apt_num, :string
  		change_column :diaries, :kids, :string
  		change_column :diaries, :kids_birth, :string
  		change_column :diaries, :lucky_nums, :string
  		change_column :diaries, :license_plate, :string
  		change_column :diaries, :wake_up, :string
  		change_column :diaries, :sensitive, :string

  end
end
