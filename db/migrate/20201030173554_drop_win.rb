class DropWin < ActiveRecord::Migration[6.0]
  def change
    drop_table :wins
  end
end
