class RemoveAnswerAttributeValue < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_attributes, :answer_attribute_value
  end
end
