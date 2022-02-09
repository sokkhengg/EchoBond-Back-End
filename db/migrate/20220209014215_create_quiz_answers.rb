class CreateQuizAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :quiz_answers do |t|
      t.string "answer"
      t.integer "quiz_question_id"
      t.integer "question_id"

      t.timestamps
    end
  end
end
