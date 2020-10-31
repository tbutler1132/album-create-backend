class PollSerializer < ActiveModel::Serializer
  attributes :id, :phase, :user_id
end
