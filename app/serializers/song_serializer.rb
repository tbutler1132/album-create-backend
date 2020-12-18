class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :placement, :phase, :description

  # def beats
  #   object.beats.collect do |beat|
  #     { :id => beat.id, :bpm => beat.bpm, :key_sig => beat.key_sig, :selected => beat.selected, :vocal => beat.vocals, :mix => beat.vocals.mixes }
  #   end
  # end
  
  belongs_to :album
  has_many :beats

  has_many :vocals
  has_many :mixes
  has_many :masters

  has_many :ref_imgs
  has_many :ref_songs
end
