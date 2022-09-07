class User < ApplicationRecord
    has_many :messages, foreign_key: :sender_id
    has_many :messages, foreign_key: :recipient_id
end
