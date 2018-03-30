class CreateThreeDigitDraws < ActiveRecord::Migration[5.1]
  def change
    create_table :three_digit_draws do |t|
    	t.integer :user_id
    	t.string :pick_three

      t.timestamps
    end
  end
end
