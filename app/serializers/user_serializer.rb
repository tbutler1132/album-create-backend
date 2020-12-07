class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username

  has_many :albums
  has_many :beats
  has_many :vocals
  has_many :mixes
  has_many :masters
end
