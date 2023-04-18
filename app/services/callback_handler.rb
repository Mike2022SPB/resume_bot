class CallbackHandler

  def self.define_step(message, bot, user)
    case message.data
    when "summary"
      bot.api.send_message(chat_id: message.from.id,
        text: ConstantModule::SUMMARY)
    when "experience"
    when "hard"
    when "soft"
    when "pdf"
    when "contacts"
    when "message"
    when "about"
    else
    end
    p message.data
  end
end