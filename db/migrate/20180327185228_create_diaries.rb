class CreateDiaries < ActiveRecord::Migration[5.1]
  def change
    create_table :diaries do |t|
    	t.string :user_id
    	t.string :address
    	t.string :cell
    	t.string :birthdate
    	t.string :zipcode
    	t.string :age
    	t.string :partner_birthdate
    	t.string :work_addr
    	t.string :work_num
    	t.string :apt_num
    	t.string :kids
    	t.string :kids_birth
    	t.string :lucky_nums
    	t.string :license_plate
    	t.string :wake_up
    	t.string :sensitive

      t.timestamps
    end
  end
end
