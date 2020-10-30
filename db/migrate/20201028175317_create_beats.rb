class CreateBeats < ActiveRecord::Migration[6.0]
  def change
    create_table :beats do |t|
      t.float :bpm
      t.string :key_sig
      t.boolean :selected
      t.integer :song_id
      t.integer :user_id

      t.timestamps
    end
  end
end
