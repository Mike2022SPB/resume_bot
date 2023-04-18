module ConstantModule

  COMMON_INLINE_KEYBOARD = [
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "📖 Summary 📖", callback_data: "summary"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "💻 Employment history 💻", callback_data: "experience"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "🤖 Hard Skills 🤖", callback_data: "hard"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "🦸🏻‍♀️ Soft Skills 🦸🏻‍♀️", callback_data: "soft"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "🧾 PDF Version 🧾", callback_data: "pdf"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "📧 Contacts 📧", callback_data: "contacts"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "✉️ Send message via bot ✉️", callback_data: "message"),
    Telegram::Bot::Types::InlineKeyboardButton.new(text: "❓ About ❓", callback_data: "about")
  ]

  COMMON_MARKUP = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: COMMON_INLINE_KEYBOARD)

  SUMMARY = "Hello! My name is Mike. I am experienced Ruby on Rails developer with 2 years" + 
  " of experience designing and implementing web applications. \n" + 
  "Proficient in back-end development using Rails" + 
  " framework. Skilled in working with Ruby and integrating with various APIs. \n" + 
  "I have strong knowledge of database design and management, and experience with testing" + 
  " frameworks such as RSpec. \nDedicated team player with a passion for delivering high-quality work and achieving project goals. \n" +
  "Modern technologies help people to adapt in a rapidly changing world." +
  " Business and its tasks allow people to open up great opportunities and prospects, which is why I want to help society by helping business."
end