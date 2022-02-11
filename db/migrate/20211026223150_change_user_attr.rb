class ChangeUserAttr < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_attributes, :attribute
    add_column :user_attributes, :attr, :string
  end
end
