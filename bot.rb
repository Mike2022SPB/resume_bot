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
    when "message"
      bot.api.send_message(chat_id: ENV.fetch('TELEGRAM_ID'),
        text: "@#{message.from.username}: #{message.text}")
    when "buy"
      investments = message.text.to_i
      bot.api.send_message(chat_id: message.from.id,
        text: "The amount of invested capital is: #{investments}",
          reply_markup: ConstantModule::NEXT_DAY_MARKUP)
      user.update(step: "game")
    when "sell"
      shares = message.text.to_i
      bot.api.send_message(chat_id: message.from.id,
        text: "The number of shares to be purchased is: #{shares}",
        reply_markup: ConstantModule::NEXT_DAY_MARKUP)
      user.update(step: "game")
    else
    end

    case message
    when Telegram::Bot::Types::Message
      TelegramMessage.create!(telegram_profile_id: user.id, message: message.text)
      case message.text
      when "/start"
        user.update(step: "menu")
        bot.api.send_message(chat_id: message.chat.id,
              text: "Hello, #{message.from.first_name}! Please, choose the option below:",
              reply_markup: ConstantModule::COMMON_MARKUP)
      else
      end
      p "text: #{message.text}"
    when Telegram::Bot::Types::CallbackQuery
      CallbackHandler.define_step(message, bot, user)
    else
      bot.logger.info("Not sure what to do with this type of message")
    end

    p "username: #{user.username}"
  end
end
