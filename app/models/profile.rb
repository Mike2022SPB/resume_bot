class Profile < ApplicationRecord
  has_many :user_chats, dependent: :destroy
end
