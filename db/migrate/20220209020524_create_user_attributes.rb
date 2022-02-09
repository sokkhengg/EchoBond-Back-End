class CreateUserAttributes < ActiveRecord::Migration[7.0]
  def change
    create_table :user_attributes do |t|
      t.integer "score"
      t.string "attr"
      t.integer "user_id"
      t.integer "quiz_id"
      
      t.timestamps
    end
  end
end
