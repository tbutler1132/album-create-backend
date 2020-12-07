class Vocal < ApplicationRecord
    belongs_to :user

    belongs_to :beat

    # belongs_to :song

    has_many :mixes

    has_many :results, as: :winnable

    has_one_attached :audio_data
end
