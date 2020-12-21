class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password_digest

  has_many :albums
  has_many :beats
  has_many :vocals
  has_many :mixes
  has_many :masters
  has_many :ref_imgs

  has_many :polls
end
