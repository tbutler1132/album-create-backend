class CommentThread < ApplicationRecord
    belongs_to :song
    has_many :comments
end
