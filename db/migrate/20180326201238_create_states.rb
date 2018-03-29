class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
    	t.string :name
    	t.integer :three_digit
    	t.integer :four_digit


      t.timestamps
    end
  end
end
