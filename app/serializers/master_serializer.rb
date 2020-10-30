class MasterSerializer < ActiveModel::Serializer
  attributes :id, :selected

  belongs_to :mix
end
