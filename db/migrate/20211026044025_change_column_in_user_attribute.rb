class ChangeColumnInUserAttribute < ActiveRecord::Migration[6.1]
  def change
    add_column :user_attributes, :score, :integer
    #remove_column :user_attributes, :user_attribute_value
  end
end
