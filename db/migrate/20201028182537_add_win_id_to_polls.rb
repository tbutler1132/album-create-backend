class AddWinIdToPolls < ActiveRecord::Migration[6.0]
  def change
    add_column :polls, :win_id, :integer
  end
end
