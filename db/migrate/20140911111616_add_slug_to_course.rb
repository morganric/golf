class AddSlugToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :slug, :string
    add_column :courses, :description, :text
  end
end
