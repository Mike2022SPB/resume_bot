module ConstantModule

  COMMON_INLINE_KEYBOARD = [
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "Summary 📖", callback_data: "summary"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "Contacts 📧", callback_data: "contacts"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "Send message via bot ✉️", callback_data: "message"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "Employment history and skills 💻", callback_data: "experience"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "Education and the relevant skills 📜", callback_data: "education"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "PDF Version 🧾", callback_data: "pdf"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "About the functionality of the service (bot) ❓", callback_data: "about")
  ]

  COMMON_MARKUP = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: COMMON_INLINE_KEYBOARD)

  WORK_EXPERIENCE_INLINE_KEYBOARD = [
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "AP Companies Global Solutions (October 2022 - until now)", callback_data: "APCGS"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "Independent developers team (March 2021 - October 2022)", callback_data: "IDT"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "Feniks consulting (August 2018 - February 2020)", callback_data: "Feniks")
  ]

  WORK_EXPERIENCE_MARKUP = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: WORK_EXPERIENCE_INLINE_KEYBOARD)

  EDUCATION_INLINE_KEYBOARD = [
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "Ruby on Rails training course", callback_data: "Goodpro"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "TOLES(test of legal english skills)", callback_data: "TOLES"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "Economical and accounting courses", callback_data: "Economical"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "Siberian Law Institute(Bachelor of law)", callback_data: "SLI"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "Web-design course", callback_data: "Webdesign")
  ]

  EDUCATION_MARKUP = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: EDUCATION_INLINE_KEYBOARD)
end