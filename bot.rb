require File.expand_path('config/environment', __dir__)

require "telegram/bot"
require_relative "lib/modules/constant_module.rb"

token = ENV.fetch('TOKEN')

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
  
    if !TelegramProfile.exists?(telegram_id: message.from.id)
      user = TelegramProfile.create(telegram_id: message.from.id,
        name: message.from.first_name,
        lastname: message.from.last_name,
        username: message.from.username)
    else
      user = TelegramProfile.find_by(telegram_id: message.from.id)
    end

    case user.step
    when "menu"
    end

    case message
    when Telegram::Bot::Types::Message
      case message.text
      when "/start"
        user.update(step: "menu")
        bot.api.send_message(chat_id: message.chat.id,
              text: "Please, choose the option",
              reply_markup: ConstantModule::COMMON_MARKUP)
      end
      p "text: #{message.text}"
    else
      bot.logger.info("Not sure what to do with this type of message")
    end

    p "username: #{user.username}"
  end
end
