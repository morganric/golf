class RenameTypeInTee < ActiveRecord::Migration
  def change
  	rename_column :tees, :type, :colour
  end
end
