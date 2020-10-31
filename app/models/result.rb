class Result < ApplicationRecord
    belongs_to :poll
    belongs_to :winnable, polymorphic: true
end
