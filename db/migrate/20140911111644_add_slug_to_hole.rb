class AddSlugToHole < ActiveRecord::Migration
  def change
    add_column :holes, :slug, :string
    add_column :holes, :name, :string
  end
end
