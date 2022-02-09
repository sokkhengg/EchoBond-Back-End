class QuizSerializer < ActiveModel::Serializer
    #include JSONAPI::Serializer
    attributes :custom_quiz_hash
    #attributes :quiz_name, :user_id, :get_answers
    has_many :quiz_questions
    has_many :user_attributes
end