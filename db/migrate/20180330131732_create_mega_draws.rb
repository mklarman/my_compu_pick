class CreateMegaDraws < ActiveRecord::Migration[5.1]
  def change
    create_table :mega_draws do |t|
    	t.integer :user_id
    	t.string :mega_draw

      t.timestamps
    end
  end
end
