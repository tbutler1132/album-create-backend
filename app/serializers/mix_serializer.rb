class MixSerializer < ActiveModel::Serializer
  attributes :id, :selected

  belongs_to :vocal

  has_many :results, as: :winnable
end
