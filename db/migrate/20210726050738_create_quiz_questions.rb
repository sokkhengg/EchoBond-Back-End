class CreateQuizQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :quiz_questions do |t|
      t.string :question
      t.integer :quiz_id
      t.timestamps
    end
  end
end
