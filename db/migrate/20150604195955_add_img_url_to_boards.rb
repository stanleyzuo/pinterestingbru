class AddImgUrlToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :img_url, :string
  end
end
