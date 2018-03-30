class ChangeFieldsToBeStringInStates < ActiveRecord::Migration[5.1]
  def change
  	change_column :states, :three_digit, :string
  	change_column :states, :four_digit, :string
  end
end
