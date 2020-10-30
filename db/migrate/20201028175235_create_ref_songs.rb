class CreateRefSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :ref_songs do |t|
      t.string :title
      t.string :song_url
      t.integer :song_id
      t.integer :user_id
      t.boolean :selected

      t.timestamps
    end
  end
end
