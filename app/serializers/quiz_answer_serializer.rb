class QuizAnswerSerializer < ActiveModel::Serializer
    #include JSONAPI::Serializer
    attributes :answer, :question_id
    belongs_to :quiz_question
    #has_many :answer_attributes
end