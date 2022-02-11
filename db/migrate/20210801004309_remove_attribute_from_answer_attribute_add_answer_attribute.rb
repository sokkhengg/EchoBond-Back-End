class RemoveAttributeFromAnswerAttributeAddAnswerAttribute < ActiveRecord::Migration[6.1]
  def change
    add_column :answer_attributes, :answer_attribute, :string
    remove_column :answer_attributes, :attribute
  end
end
