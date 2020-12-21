class AddColumnToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :comment_thread_id, :integer
  end
end
