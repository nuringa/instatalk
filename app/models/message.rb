class Message < ApplicationRecord
  belongs_to :room, optional: true
  belongs_to :user
end
