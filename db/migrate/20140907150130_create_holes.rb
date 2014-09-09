class CreateHoles < ActiveRecord::Migration
  def change
    create_table :holes do |t|
      t.integer :number
      t.integer :course_id
      t.string :image
      t.integer :stroke_index

      t.timestamps
    end
  end
end
