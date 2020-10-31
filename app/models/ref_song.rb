class RefSong < ApplicationRecord
    
    belongs_to :user

    belongs_to :song

    has_many :results, as: :winnable

end
