class CreateCommentThreads < ActiveRecord::Migration[6.0]
  def change
    create_table :comment_threads do |t|
      t.integer :song_id
      t.string :title

      t.timestamps
    end
  end
end
