class RemoveNameFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :first_name, :string
    remove_column :users, :second_name, :string
    remove_column :users, :birthday, :datetime
  end
end
