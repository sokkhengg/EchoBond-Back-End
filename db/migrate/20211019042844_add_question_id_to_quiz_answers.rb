class AddQuestionIdToQuizAnswers < ActiveRecord::Migration[6.1]
  def change
    add_column :quiz_answers, :question_id, :integer
  end
end
