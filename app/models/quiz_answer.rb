class QuizAnswer < ApplicationRecord
  belongs_to :quiz_question
  has_many :answer_attributes
end
