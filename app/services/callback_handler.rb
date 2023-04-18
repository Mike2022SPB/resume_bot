class CallbackHandler

  def self.define_step(message, bot, user)
    case message.data
    when "summary"
      bot.api.send_message(chat_id: message.from.id,
        text: Paragraph.find_by(title: "Summary").description)
    when "experience"
      bot.api.send_message(chat_id: message.from.id,
        text: "Employment history 💻",
        reply_markup: ConstantModule::WORK_EXPERIENCE_MARKUP)
    when "IDT"
      bot.api.send_message(chat_id: message.from.id,
        text: Paragraph.find_by(title: "IDT").description)
    when "APCGS"
      bot.api.send_message(chat_id: message.from.id,
        text: Paragraph.find_by(title: "APCGS").description)
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