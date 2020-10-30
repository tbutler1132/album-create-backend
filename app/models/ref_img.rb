class RefImg < ApplicationRecord
    belongs_to :user

    belongs_to :song

    has_many :wins
    has_many :polls, through: :wins

    has_many :losses
    has_many :polls, through: :losses
end
