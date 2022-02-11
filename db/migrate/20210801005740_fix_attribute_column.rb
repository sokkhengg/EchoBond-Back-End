class FixAttributeColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :answer_attributes, :quiz_answer_id, :string
    remove_column :answer_attributes, :answer_id
  end
end
