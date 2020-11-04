class BeatSerializer < ActiveModel::Serializer
  attributes :id, :bpm, :key_sig, :selected, :audio, :song

  has_many :vocals

  belongs_to :song
  belongs_to :user

  has_many :results, as: :winnable
end
