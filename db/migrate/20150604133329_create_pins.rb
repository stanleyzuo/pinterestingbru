class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string  :title
      t.string  :comments
      t.string  :url
      t.integer :board_id

      t.timestamps null: false
    end
  end
end
