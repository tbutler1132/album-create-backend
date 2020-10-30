class RemoveWinIdFromPolls < ActiveRecord::Migration[6.0]
  def change
    remove_column :polls, :win_id, :string
  end
end
