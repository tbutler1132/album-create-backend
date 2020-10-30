class ResultSerializer < ActiveModel::Serializer
  attributes :id, :outcome, :poll_id, :ref_img_id, :ref_song_id, :beat_id, :vocal_id, :mix_id, :master_id
end
