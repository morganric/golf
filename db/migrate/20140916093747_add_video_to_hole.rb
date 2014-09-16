class AddVideoToHole < ActiveRecord::Migration
  def change
    add_column :holes, :video_embed_code, :text
  end
end
