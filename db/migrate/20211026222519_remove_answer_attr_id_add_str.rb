class RemoveAnswerAttrIdAddStr < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_attributes, :answer_attribute_id
    add_column :user_attributes, :attribute, :string
  end
end
