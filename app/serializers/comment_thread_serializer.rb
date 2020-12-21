class CommentThreadSerializer < ActiveModel::Serializer
  attributes :id, :song_id, :title, :phase

  belongs_to :song
  has_many :comments
end
