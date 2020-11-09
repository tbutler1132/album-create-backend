class BeatSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :bpm, :key_sig, :selected, :audio, :song, :audio_data

  has_many :vocals

  belongs_to :song
  belongs_to :user

  has_many :results, as: :winnable

  def audio_data
    if object.audio_data.attached?
      {
        url: rails_blob_url(object.audio_data, only_path: true)
      }
    end
  end
end
