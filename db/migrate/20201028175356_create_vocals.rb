class CreateVocals < ActiveRecord::Migration[6.0]
  def change
    create_table :vocals do |t|
      t.integer :beat_id
      t.integer :user_id
      t.boolean :selected

      t.timestamps
    end
  end
end
