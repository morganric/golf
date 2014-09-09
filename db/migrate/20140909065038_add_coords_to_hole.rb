class AddCoordsToHole < ActiveRecord::Migration
  def change
    add_column :holes, :coords, :text
  end
end
