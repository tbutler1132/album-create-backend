class AddLossIdToPolls < ActiveRecord::Migration[6.0]
  def change
    add_column :polls, :loss_id, :integer
  end
end
