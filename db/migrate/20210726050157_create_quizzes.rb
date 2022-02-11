class CreateQuizzes < ActiveRecord::Migration[6.1]
  def change
    create_table :quizzes do |t|
      t.string :quiz_name
      t.integer :user_id
      t.timestamps
    end
  end
end
