class VocalSerializer < ActiveModel::Serializer
  attributes :id, :selected

  belongs_to :beat

  has_many :results, as: :winnable
end
