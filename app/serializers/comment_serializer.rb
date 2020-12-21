class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :song_id, :content, :user

  belongs_to :user
  belongs_to :comment_thread

end
