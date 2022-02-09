class QuizQuestionSerializer < ActiveModel::Serializer
    #include JSONAPI::Serializer
    attributes :question, :quiz_id
    belongs_to :quiz
    has_many :quiz_answers
    has_many :answer_attributes, through: :quiz_answers
end