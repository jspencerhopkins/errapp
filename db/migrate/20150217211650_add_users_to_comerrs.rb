class AddUsersToComerrs < ActiveRecord::Migration
  def change
  	add_column :comerrs, :user_id, :integer
  end
end
