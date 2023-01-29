class ChangeReferenceMessagesToRoom < ActiveRecord::Migration[7.0]
  def change
    remove_reference :messages, :room
    add_reference :messages, :room, index: true, foreign_key: true
  end
end
