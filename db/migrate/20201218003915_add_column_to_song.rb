class AddColumnToSong < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :description, :string
  end
end
