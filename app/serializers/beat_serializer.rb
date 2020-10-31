class BeatSerializer < ActiveModel::Serializer
  attributes :id, :bpm, :key_sig, :selected

  has_many :vocals

  has_many :results, as: :winnable
end
