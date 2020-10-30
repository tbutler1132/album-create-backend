class VocalSerializer < ActiveModel::Serializer
  attributes :id, :selected

  belongs_to :beat
end
