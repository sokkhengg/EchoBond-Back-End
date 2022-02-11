class ChangeQustionIdToQuizQuestionId < ActiveRecord::Migration[6.1]
  def change
    add_column :quiz_answers, :quiz_question_id, :string
    remove_column :quiz_answers, :question_id
  end
end
