class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :placement
      t.integer :phase

      t.timestamps
    end
  end
end
