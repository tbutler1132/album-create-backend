class RemoveLossIdFromPolls < ActiveRecord::Migration[6.0]
  def change
    remove_column :polls, :loss_id, :string
  end
end
