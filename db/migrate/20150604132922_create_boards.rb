class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.string :description
      t.boolean :privacy
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
