module ConstantModule

  COMMON_INLINE_KEYBOARD = [
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "📖 Summary 📖", callback_data: "summary"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "💻 Employment history 💻", callback_data: "experience"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "🤖 Hard Skills 🤖", callback_data: "hard"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "🦸🏻‍♀️ Soft Skills 🦸🏻‍♀️", callback_data: "soft"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "🧾 PDF Version 🧾", callback_data: "pdf"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "📧 Contacts 📧", callback_data: "contacts"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "❓ About ❓", callback_data: "about")
  ]

  COMMON_MARKUP = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: COMMON_INLINE_KEYBOARD)
end