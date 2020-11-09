class Beat < ApplicationRecord
    belongs_to :user

    belongs_to :song

    has_many :vocals

    has_many :results, as: :winnable

    has_one_attached :audio_data

end
