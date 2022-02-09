class AnswerAttributeSerializer < ActiveModel::Serializer
    attributes :id, :answer_attribute
    belongs_to :quiz_answer
end