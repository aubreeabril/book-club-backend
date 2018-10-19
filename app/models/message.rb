class Message < ApplicationRecord
  belongs_to :user
  belongs_to :group

  # after_create_commit do MessageCreationEventBroadcastJob.perform_later(self)
  # end
end
