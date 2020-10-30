class Master < ApplicationRecord
    belongs_to :user

    belongs_to :mix

    belongs_to :song

    has_many :wins
    has_many :polls, through: :wins

    has_many :losses
    has_many :polls, through: :losses
end
