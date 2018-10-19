class MessageSerializer < ActiveModel::Serializer
  attributes :id, :group_id, :user_id, :text
end
