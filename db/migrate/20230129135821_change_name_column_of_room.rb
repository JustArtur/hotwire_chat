class ChangeNameColumnOfRoom < ActiveRecord::Migration[7.0]
  def change
    change_column(:rooms, :name, :string, null: false)
  end
end
