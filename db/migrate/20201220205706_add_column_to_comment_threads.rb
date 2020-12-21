class AddColumnToCommentThreads < ActiveRecord::Migration[6.0]
  def change
    add_column :comment_threads, :phase, :integer
  end
end
