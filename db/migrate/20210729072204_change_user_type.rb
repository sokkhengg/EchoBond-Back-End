class ChangeUserType < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_type, :string
    remove_column :users, :type
  end
end
