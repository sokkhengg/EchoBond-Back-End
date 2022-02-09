class UserAttributeSerializer < ActiveModel::Serializer
  attributes :id, :score, :attr, :quiz, :quiz_id, :user_id
  belongs_to :user
  belongs_to :quiz
end
