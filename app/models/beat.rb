class Beat < ApplicationRecord
    belongs_to :user

    belongs_to :song

    has_many :vocals

end
