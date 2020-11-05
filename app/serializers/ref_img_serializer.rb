class RefImgSerializer < ActiveModel::Serializer
  attributes :id, :title, :img_url, :selected, :song

  belongs_to :song
  belongs_to :user

  has_many :results, as: :winnable
end
