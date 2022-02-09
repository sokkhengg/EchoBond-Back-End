class MessageSerializer < ActiveModel::Serializer
  attributes :id, :message
  belongs_to :user
end
