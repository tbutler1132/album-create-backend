class Song < ApplicationRecord
    belongs_to :album

    has_many :beats
    has_many :ref_imgs
    has_many :ref_songs
    has_many :comment_threads

    has_many :vocals, through: :beats
    has_many :mixes, through: :vocals
    has_many :masters, through: :mixes
end
