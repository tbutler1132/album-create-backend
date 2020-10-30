class MixSerializer < ActiveModel::Serializer
  attributes :id, :selected

  belongs_to :vocal
end
