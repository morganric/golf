class CreateTees < ActiveRecord::Migration
  def change
    create_table :tees do |t|
      t.string :type
      t.integer :par
      t.integer :length
      t.integer :hole_id

      t.timestamps
    end
  end
end
