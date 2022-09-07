class User < ApplicationRecord
  def messages
    Message.where("sender_id = ? OR recipient_id = ?", self.id, self.id)
  end
end
