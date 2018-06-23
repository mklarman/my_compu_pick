class RemoveStateFromUsers < ActiveRecord::Migration[5.1]
  def change

  	change_table :users do |t|

  		t.remove :lottery_state



  	end
  end
end
