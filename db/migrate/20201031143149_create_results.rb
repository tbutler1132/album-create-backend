class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.boolean :win
      t.integer :winnable_id
      t.string :winnable_type
      t.integer :poll_id

      t.timestamps
    end
  end
end
