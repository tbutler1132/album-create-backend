class BeatSerializer < ActiveModel::Serializer
  attributes :id, :bpm, :key_sig, :selected

  has_many :vocals

end
