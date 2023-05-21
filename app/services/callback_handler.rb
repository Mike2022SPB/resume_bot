class CallbackHandler

  def self.define_step(message, bot, user)
    stocks_titles = ["apple_stock", "lockheed_stock", "microsoft_stock", "mcdonald’s_stock", "BAC_stock"]

    stock_inline_keyboard = stocks_titles.map do |stock_title|
      Telegram::Bot::Types::InlineKeyboardButton.new(text: stock_title.gsub("_", " ").capitalize, callback_data: stock_title)
    end

    stock_markups = Telegram::Bot::Types::InlineKeyboardMarkup.new(inline_keyboard: stock_inline_keyboard)
    operations = ["Next", "Buy", "Sell"]
    company = message.data.split("_")[0]

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
      bot.api.send_message(chat_id: message.from.id,
        text: Paragraph.find_by(title: "About").description,
        reply_markup: ConstantModule::GAME_MARKUP)
    when "Investment game"
      bot.api.send_message(chat_id: message.from.id,
        text: Paragraph.find_by(title: "About investment game").description,
        reply_markup: stock_markups)
    when "Next"
      game = user.games.last
      game.update!(step: game.step += 1)
      stock = Stock.find_by(ticker: game.ticker[0])
      begin
        price = stock.trading_days.sort_by(&:date)[game.step].adj_close.to_f
        date = stock.trading_days.sort_by(&:date)[game.step].date
        game.update(date: date)
        bot.api.send_message(chat_id: message.from.id,
          text: "Stock: #{stock.description} \n" +
          "Date: #{game.date} \n" +
          "Price: #{price} \n" +
          "Your capital: #{user.capital.to_f}$" ,
          reply_markup: ConstantModule::NEXT_DAY_MARKUP)
      rescue NoMethodError
        bot.api.send_message(chat_id: message.from.id,
          text: "The period is over, the game is over",
          reply_markup: stock_markups)
      else
      end
    when "Buy"
      user.update(step: "buy")
      bot.api.send_message(chat_id: message.from.id,
        text: "Please enter the amount of capital you want to spend on the purchase of shares.")
    when "Sell"
      user.update(step: "sell")
      bot.api.send_message(chat_id: message.from.id,
        text: "Please enter the number of shares you want to sell.")
    else
    end


    if stocks_titles.include?(message.data)
      p stock = Stock.find_by(title: message.data)
      first_trading_day = stock.trading_days.sort_by(&:date).first
      first_trading_day_price = first_trading_day.adj_close.to_f
      first_trading_day_date = first_trading_day.date
      game = Game.create!(date: first_trading_day_date, 
        step: 0,
        telegram_profile_id: user.id,
        ticker: [] << stock.ticker)
      bot.api.send_message(chat_id: message.from.id,
        text: "Stock: #{stock.description} \n" +
          "Date: #{game.date} \n" +
          "Price: #{first_trading_day_price} \n" +
          "Your capital: #{user.capital.to_f}$",
        reply_markup: ConstantModule::NEXT_DAY_MARKUP)
    else
    end

    TelegramMessage.create!(telegram_profile_id: user.id, message: message.data)
    p message.data
  end
end