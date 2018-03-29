class CreateDiaries < ActiveRecord::Migration[5.1]
  def change
    create_table :diaries do |t|
    	t.integer :user_id
    	t.integer :address
    	t.integer :cell
    	t.integer :birthdate
    	t.integer :zipcode
    	t.integer :age
    	t.integer :partner_birthdate
    	t.integer :work_addr
    	t.integer :work_num
    	t.integer :apt_num
    	t.integer :kids
    	t.integer :kids_birth
    	t.integer :lucky_nums
    	t.integer :license_plate
    	t.integer :wake_up
    	t.integer :sensitive

      t.timestamps
    end
  end
end
