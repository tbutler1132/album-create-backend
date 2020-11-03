class MasterSerializer < ActiveModel::Serializer
  attributes :id, :selected, :song

  belongs_to :mix

  def song
    { :song => object.mix }
  end 

end
