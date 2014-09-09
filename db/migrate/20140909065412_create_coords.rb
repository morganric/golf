class CreateCoords < ActiveRecord::Migration
  def change
    create_table :coords do |t|
      t.float :latitude
      t.float :longitude
      t.integer :hole_id

      t.timestamps
    end
  end
end
