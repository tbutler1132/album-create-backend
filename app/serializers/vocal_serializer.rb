class VocalSerializer < ActiveModel::Serializer
  attributes :id, :selected, :song

  belongs_to :beat

  has_many :results, as: :winnable

  def song
      { :song => object.beat }
  end
end
