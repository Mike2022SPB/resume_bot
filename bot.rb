require File.expand_path('config/environment', __dir__)

require "telegram/bot"

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
    when "first"
      variable = message.text.to_i + 10
        bot.api.send_message(chat_id: message.chat.id, 
          text: "#{variable}")
      user.update(step: "second")
    when "second"
    end

    case message
    when Telegram::Bot::Types::Message
      case message.text
      when "/start"
        user.update(step: "first")
        bot.api.send_message(chat_id: message.chat.id, 
          text: "Input your number")
      end
      p "text: #{message.text}"
    else
      bot.logger.info("Not sure what to do with this type of message")
    end

    p "username: #{user.username}"
  end
end
