class ChangeTextColumnOfMessage < ActiveRecord::Migration[7.0]
  def change
    change_column(:messages, :text, :string, null: false)
  end
end
