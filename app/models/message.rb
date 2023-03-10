class Message < ApplicationRecord
  validates :text, presence: true
  after_create_commit { broadcast_append_to 'messages'}
  belongs_to :room
end
