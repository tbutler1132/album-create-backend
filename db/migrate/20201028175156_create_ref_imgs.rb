class CreateRefImgs < ActiveRecord::Migration[6.0]
  def change
    create_table :ref_imgs do |t|
      t.string :title
      t.string :img_url
      t.integer :song_id
      t.integer :user_id
      t.boolean :selected

      t.timestamps
    end
  end
end
