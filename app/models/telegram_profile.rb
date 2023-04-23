class TelegramProfile < ApplicationRecord
  has_many :telegram_messages
end
