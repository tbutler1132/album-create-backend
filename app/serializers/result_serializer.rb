class ResultSerializer < ActiveModel::Serializer
  attributes :id, :win

  # belongs_to :winnable

  belongs_to :poll

  belongs_to :winnable
end
