class VocalSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :selected, :beat, :audio_data

  belongs_to :beat

  belongs_to :user

  has_many :results, as: :winnable

  # def beat
  #     { :beat => object.beat }
  # end

  def audio_data
    if object.audio_data.attached?
      {
        url: rails_blob_url(object.audio_data, only_path: true)
      }
    end
  end
end
