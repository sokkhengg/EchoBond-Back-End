class CreateAnswerAttributes < ActiveRecord::Migration[6.1]
  def change
    create_table :answer_attributes do |t|
      t.string :attribute
      t.integer :answer_id
      t.timestamps
    end
  end
end
