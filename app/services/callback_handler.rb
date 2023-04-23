class CallbackHandler

  def self.define_step(message, bot, user)
    case message.data
    when "summary"
      bot.api.send_message(chat_id: message.from.id,
        text: Paragraph.find_by(title: "Summary").description)
    when "contacts"
      bot.api.send_message(chat_id: message.from.id,
        text: Paragraph.find_by(title: "Contacts").description)
    when "message"
      user.update(step: "message")
      bot.api.send_message(chat_id: message.from.id,
        text: "Enter the text below and it will be sent to my personal chat.")
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
    when "education"
      bot.api.send_message(chat_id: message.from.id,
        text: "Education and the relevant skills 📜",
        reply_markup: ConstantModule::EDUCATION_MARKUP)
    when "Goodpro"
      bot.api.send_message(chat_id: message.from.id,
        text: Paragraph.find_by(title: "Goodpro").description)
    when "TOLES"
      bot.api.send_message(chat_id: message.from.id,
        text: Paragraph.find_by(title: "TOLES").description)
    when "Economical"
      bot.api.send_message(chat_id: message.from.id,
        text: Paragraph.find_by(title: "Economical").description)
    when "SLI"
      bot.api.send_message(chat_id: message.from.id,
        text: Paragraph.find_by(title: "SLI").description)
    when "Webdesign"
      bot.api.send_message(chat_id: message.from.id,
        text: Paragraph.find_by(title: "Webdesign").description)
    when "pdf"
      bot.api.send_message(chat_id: message.from.id,
        text: "https://mike2022spb.github.io/curriculum_vitae/files/carriculum_vitae.pdf")
    when "about"
    else
    end
    TelegramMessage.create!(telegram_profile_id: user.id, message: message.data)
    p message.data
  end
end