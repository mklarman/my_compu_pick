class CreateFourDigitDraws < ActiveRecord::Migration[5.1]
  def change
    create_table :four_digit_draws do |t|
    	t.integer :user_id
    	t.string :pick_four

      t.timestamps
    end
  end
end
