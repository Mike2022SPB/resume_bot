class CallbackHandler

  def self.define_step(message, bot, user)
    case message.data
    when "summary"
      bot.api.send_message(chat_id: message.from.id,
        text: Paragraph.find_by(title: "Summary").description)
    when "experience"
      bot.api.send_message(chat_id: message.from.id,
        text: "Employment history and skills 💻",
        reply_markup: ConstantModule::WORK_EXPERIENCE_MARKUP)
    when "IDT"
      bot.api.send_message(chat_id: message.from.id,
        text: Paragraph.find_by(title: "IDT").description)
    when "APCGS"
      bot.api.send_message(chat_id: message.from.id,
        text: Paragraph.find_by(title: "APCGS").description)
    when "Feniks"
      bot.api.send_message(chat_id: message.from.id,
        text: Paragraph.find_by(title: "Feniks consulting").description)
    when "pdf"
    when "contacts"
      bot.api.send_message(chat_id: message.from.id,
        text: Paragraph.find_by(title: "Contacts").description)
    when "message"
      user.update(step: "message")
      bot.api.send_message(chat_id: message.from.id,
        text: "Enter the text below and it will be sent to my chat.")
    when "about"
    else
    end
    p message.data
  end
end