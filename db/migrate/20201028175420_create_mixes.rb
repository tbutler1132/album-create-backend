class CreateMixes < ActiveRecord::Migration[6.0]
  def change
    create_table :mixes do |t|
      t.integer :vocal_id
      t.integer :user_id
      t.boolean :selected

      t.timestamps
    end
  end
end
