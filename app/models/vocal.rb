class Vocal < ApplicationRecord
    belongs_to :user

    belongs_to :beat

    # belongs_to :song

    has_many :mixes
end
