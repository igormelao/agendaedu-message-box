class Message < ApplicationRecord
  belongs_to :sender,   :class_name => :User
  belongs_to :receiver, :class_name => :User

  validates_presence_of :body, :sender, :receiver, :status

  STATUS_CREATE   = 0
  STATUS_READ     = 1
  STATUS_ARCHIEVE = 2

  def update_status_to(status)
    self.update(status: status)
  end
end
