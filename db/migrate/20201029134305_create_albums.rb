class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :user_id
      t.string :genre

      t.timestamps
    end
  end
end
