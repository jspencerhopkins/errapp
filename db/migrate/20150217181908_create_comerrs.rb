class CreateComerrs < ActiveRecord::Migration
  def change
    create_table :comerrs do |t|
      t.string :message
      t.string :description
      t.string :resolution

      t.timestamps null: false
    end
  end
end
