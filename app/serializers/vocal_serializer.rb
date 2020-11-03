class VocalSerializer < ActiveModel::Serializer
  attributes :id, :selected, :beat

  belongs_to :beat

  has_many :results, as: :winnable

  # def beat
  #     { :beat => object.beat }
  # end
end
