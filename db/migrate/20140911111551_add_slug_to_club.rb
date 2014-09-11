class AddSlugToClub < ActiveRecord::Migration
  def change
    add_column :clubs, :slug, :string
    add_column :clubs, :membership, :text
  end
end
