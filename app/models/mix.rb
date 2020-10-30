class Mix < ApplicationRecord
    belongs_to :user
    
    belongs_to :vocal
    
    belongs_to :song

    has_many :masters
end
