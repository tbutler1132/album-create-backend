class CreateMasters < ActiveRecord::Migration[6.0]
  def change
    create_table :masters do |t|
      t.integer :mix_id
      t.integer :user_id
      t.boolean :selected

      t.timestamps
    end
  end
end
