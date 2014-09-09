class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.text :about
      t.string :banner
      t.string :logo
      t.string :address
      t.string :zip_code
      t.string :country
      t.string :phone_number
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
