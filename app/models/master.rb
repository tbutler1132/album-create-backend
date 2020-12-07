class Master < ApplicationRecord
    belongs_to :user

    belongs_to :mix

    # belongs_to :song

    has_many :results, as: :winnable

    has_one_attached :audio_data
end
