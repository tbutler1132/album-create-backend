class MixSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :selected, :vocal, :audio_data

  belongs_to :vocal
  
  belongs_to :user

  has_many :results, as: :winnable

  # def vocal
  #   { :vocal => object.vocal }
  # end

  def audio_data
    if object.audio_data.attached?
      {
        url: rails_blob_url(object.audio_data, only_path: true)
      }
    end
  end
end
