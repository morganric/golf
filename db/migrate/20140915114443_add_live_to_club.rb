class AddLiveToClub < ActiveRecord::Migration
  def change
    add_column :clubs, :live, :boolean
  end
end
