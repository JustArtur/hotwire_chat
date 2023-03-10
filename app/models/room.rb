class Room < ApplicationRecord
  validates :name, presence: true
  after_create_commit { broadcast_prepend_to 'rooms'}
  has_many :messages
end
