class CreateQuizAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :quiz_answers do |t|
      t.string :answer
      t.integer :question_id
      t.timestamps
    end
  end
end
