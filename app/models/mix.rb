class Mix < ApplicationRecord
    belongs_to :user
    
    belongs_to :vocal
    
    # belongs_to :song

    has_many :masters

    has_many :results, as: :winnable

    has_one_attached :audio_data
end
