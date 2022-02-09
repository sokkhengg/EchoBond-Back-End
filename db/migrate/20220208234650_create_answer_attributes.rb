class CreateAnswerAttributes < ActiveRecord::Migration[7.0]
  def change
    create_table :answer_attributes do |t|
      t.string "answer_attribute"
      t.string "quiz_answer_id"
      
      t.timestamps
    end
  end
end
