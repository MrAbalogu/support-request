class AddColumnToTable < ActiveRecord::Migration[5.0]
  def change
  	add_reference :requests, :user, index: true 
  end
end
