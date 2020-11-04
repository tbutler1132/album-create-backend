class MasterSerializer < ActiveModel::Serializer
  attributes :id, :selected, :mix, :beat

  belongs_to :mix

  has_many :results, as: :winnable

  def beat
    { :beat => object.mix.vocal.beat }
  end 

end
