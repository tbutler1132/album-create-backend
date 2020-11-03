class MasterSerializer < ActiveModel::Serializer
  attributes :id, :selected, :mix, :beat

  belongs_to :mix

  def beat
    { :beat => object.mix.vocal.beat }
  end 

end
