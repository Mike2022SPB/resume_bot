class TelegramProfile < ApplicationRecord
  has_many :telegram_messages
  has_many :games
end
