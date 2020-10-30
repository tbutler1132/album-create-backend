class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username

  has_many :albums
  has_many :beats
end
