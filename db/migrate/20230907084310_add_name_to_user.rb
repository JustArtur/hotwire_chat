class AddNameToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :second_name, :string
    add_column :users, :birthday, :datetime
  end
end
