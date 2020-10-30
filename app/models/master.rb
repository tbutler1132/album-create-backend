class Master < ApplicationRecord
    belongs_to :user

    belongs_to :mix

    # belongs_to :song
end
