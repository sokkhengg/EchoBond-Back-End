class CreateUserAttributes < ActiveRecord::Migration[6.1]
  def change
    create_table :user_attributes do |t|
      t.integer :user_id
      t.integer :answer_attribute_id
      t.integer :answer_attribute_value
      t.integer :quiz_id
      t.timestamps
    end
  end
end
