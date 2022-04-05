class Quiz < ApplicationRecord
  belongs_to :user
  validates :quiz_name, uniqueness: true
  has_many :quiz_questions
  has_many :user_attributes

  # take each question in the quiz and return the corresponding answer
  def get_answers
      self.quiz_questions.map do |question|
          question.quiz_answers
      end
  end

  def custom_quiz_hash
      h = {
          name: self.quiz_name,
          user_id: self.user_id,
          quiz_id: self.id,
          questions: {}
      }

      self.quiz_questions.each.with_index(1) do |question, index|
          h[:questions][index] = {
              question_id: question.id,
              question_name: question
          }
      end

      h[:questions].each do |question_number, hash|
          hash[:answers] = {}
          question = self.quiz_questions.find{ |q| q.id == hash[:question_id]}
          question.quiz_answers.each.with_index(1) do |answer, index|
              answer_attribute = answer.answer_attributes.find { |a| a.id == answer.id }
              hash[:answers][index] = {
                  answer_id: answer.id,
                  answer_name: answer,
                  answer_attribute: answer_attribute
              }
              
          end
      end

      h
  end

end

# - The code starts by defining a hash called "custom_quiz_hash". - The key of the hash is the name of the quiz. - The value of each key in this hash is an array containing all the questions for that quiz. - The next line defines a new variable called "h" which will be used to store information about quizzes and their questions. - This variable starts out empty, but it will eventually contain all the information about every quiz on our site. - Next, we define some variables that are going to be used when we iterate through all of our quizzes: - - h[:questions] - A list with keys corresponding to question names and values corresponding to arrays containing all the questions for that particular quiz - - h[:questions].each - Iterates over each item in h[:questions] (in order) - - self.quiz_questions - An instance variable representing one specific quiz's list of questions
# - The code will produce a hash with the following keys: - name: self.quiz_name, - user_id: self.user_id, - quiz_id: self.id, - questions: {}