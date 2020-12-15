class User < ApplicationRecord
    has_secure_password
    
    has_many :albums

    has_many :polls

    has_many :beats
    has_many :masters
    has_many :mixes
    has_many :ref_imgs
    has_many :ref_songs
    has_many :vocals
end
