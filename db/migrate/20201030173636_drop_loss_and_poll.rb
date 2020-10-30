class DropLossAndPoll < ActiveRecord::Migration[6.0]
  def change
    drop_table :polls
    drop_table :losses
  end
end
