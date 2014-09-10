class AddToClub < ActiveRecord::Migration
  def change
  	add_column :clubs, :green_fees, :text
  	add_column :clubs, :email, :string
  end
end
