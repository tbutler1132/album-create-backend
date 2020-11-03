class MixSerializer < ActiveModel::Serializer
  attributes :id, :selected, :vocal

  belongs_to :vocal

  has_many :results, as: :winnable

  # def vocal
  #   { :vocal => object.vocal }
  # end
end
