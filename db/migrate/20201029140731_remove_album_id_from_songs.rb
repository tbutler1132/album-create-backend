class RemoveAlbumIdFromSongs < ActiveRecord::Migration[6.0]
  def change
    remove_column :songs, :Album_id, :string
  end
end
