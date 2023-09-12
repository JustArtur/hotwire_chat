class AddUnconfirmedAccountToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :confirmed_account, :boolean, :default => false 
  end
end
