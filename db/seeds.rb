require 'uri'
require 'net/http'
require 'json'

AdminUser.create_with(
  name: ENV["ADMIN_NAME"] || Rails.application.credentials.admin[:name],
  password: ENV["ADMIN_PASSWORD"] || Rails.application.credentials.admin[:password],
  password_confirmation: ENV["ADMIN_PASSWORD"] || Rails.application.credentials.admin[:password],
).find_or_create_by(email: ENV["ADMIN_EMAIL"] || Rails.application.credentials.admin[:email])

if Paragraph.find_by(title: "Summary").nil?
  Paragraph.create(title: "Summary",
    description: "Hello! My name is Mike. I am experienced Ruby on Rails developer with 2 years" + 
  " of experience designing and implementing web applications. \n" + 
  "Proficient in back-end development using Rails" + 
  " framework. Skilled in working with Ruby and integrating with various APIs. \n" + 
  "I have strong knowledge of database design and management, and experience with testing" + 
  " frameworks such as RSpec. \nDedicated team player with a passion for delivering high-quality work and achieving project goals. \n" +
  "Modern technologies help people to adapt in a rapidly changing world." +
  " Business and its tasks allow people to open up great opportunities and prospects, which is why I want to help society by helping business.")
  
  puts "=====Summary have been created====="
end

if Paragraph.find_by(title: "IDT").nil?
  Paragraph.create(title: "IDT",
    description: "Independent developers team (March 2021 - October 2022)\n \n" +
      "Working in a small team related to the development of " + 
      "applications and systems from the beginning to the completion of the project. \n \n" + 
      "1. Using Object Relational Mapping through ActiveRecord framework to create and work with databases: Creating of databases, filling in test data for manual testing. Creating migrations, modifying models and validations. Seeding databases; \n \n" +
      "2. Active Record Associations: establishing relationships between tables (belongs_to, has_one, has_many, has_many :through, has_one: through, has_and_belongs_to_many); \n \n" +
      "3. Creating an admin panel, user, user-related databases (for example, store, goods, posts, comments, etc.). Creation and modification of registration forms. Creation of functionality and interface for user interaction with objects and with other users; \n \n" +
      "4. Rails Routing: Creating controllers and configuring routes; \n \n" +
      "5. Creating and modifying views using erb and slim; \n \n" +
      "6. Creating and modifying helpers, partials and flash; \n \n" +
      "7. Creating custom cascading style sheets(CSS) and JavaScript for basic front-end; \n \n" +
      "8. Test-driven development(TDD).")
  puts "=====IDT have been created====="
end

if Paragraph.find_by(title: "APCGS").nil?
  Paragraph.create(title: "APCGS",
    description: "AP Companies Global Solutions (October 2022 - until now)\n \n" +
    "Work in a startup related to the creation of a mobile application in the field of healthcare.\n \n" + 
      "1. Creating mobile app services in the backend from scratch; \n \n" +
      "2. Using hasura graphQL Engine instead of RESTapi; \n \n" +
      "3. Connecting and working with the API inside and outside of server services; \n \n" +
      "4. Creating and working with hasura actions and event triggers; \n \n" +
      "5. Using the KISS programming principle and Model-View-Presenter (MVP) design pattern; \n \n" +
      "6. Using kubesphere and gitlab for version control and application deployment; \n \n" +
      "7. Working with sidekiq workers, and non-relational Redis database.")
  puts "=====APCGS have been created====="
end

if Paragraph.find_by(title: "Feniks consulting").nil?
  Paragraph.create(title: "Feniks consulting",
    description: "I worked in law. I started as a paralegal and ended up as the head of a legal branch." + 
      "By the end of my career, I was looking for ways to program legal processes and was decomposing tasks" + 
      "for financial analysis of companies to increase profits.\n \n" +
      "Relevant to RoR developer analytical and soft skills:\n \n" + 
      "1. Financial analysis of the company, profits, losses and solvency; \n \n" +
      "2. Financial analysis of real estate, securities and accounts receivable; \n \n" +
      "3. Negotiating and resolving disagreements during the litigation and teamwork; \n \n" +
      "4. Decomposition of complex tasks and distribution of roles among team members; \n \n" +
      "5. Analysis of contracts, agreements, court decisions, formulation of conclusions and generalization of judicial practice; \n \n" +
      "6. Setting tasks for the development department to automate the team's work processes; \n \n" +
      "7. Participation in auctions for the sale of bankrupt property, analysis of bidders.")
  puts "=====Feniks have been created====="
end

if Paragraph.find_by(title: "Contacts").nil?
  Paragraph.create(title: "Contacts",
    description: "Contacts \n \n" + 
      "Location: I'm digital nomad, but currently live in Georgia, Batumi. \n \n" + 
      "E-mail: mike.godunoff2020@gmail.com \n \n" +
      "Telegram: https://t.me/mike_godunoff \n \n" + 
      "Github: https://github.com/Mike2022SPB; \n \n" +
      "Linkedin: https://www.linkedin.com/in/mike-godunoff/")
  puts "=====Contacts have been created====="
end

if Paragraph.find_by(title: "Goodpro").nil?
  Paragraph.create(title: "Goodpro",
    description: "✓Completed Ruby on Rails training course. (February 2022 - September 2022) \n \n" + 
      "->Object-oriented programming \n \n" + 
      "->Building of command-line applications \n \n" +
      "->Creating apps and working with Rails \n \n" + 
      "->Testing Rails Applications")
  puts "=====Goodpro have been created====="
end

if Paragraph.find_by(title: "TOLES").nil?
  Paragraph.create(title: "TOLES",
    description: "✓Completed the TOLES(test of legal english skills) (February 2021 - November 2021) \n \n" + 
      "->Plain English \n \n" + 
      "->Techical English \n \n" +
      "->Legal English \n \n" + 
      "->International contracts and Banking\n \n" +
      "->Common law system")
  puts "=====TOLES have been created====="
end

if Paragraph.find_by(title: "Economical").nil?
  Paragraph.create(title: "Economical",
    description: "✓Completed economical and accounting courses (January 2018 - July 2018) \n \n" + 
      "->The economy of the enterprise \n \n" + 
      "->Accounting software")
  puts "=====Economical have been created====="
end

if Paragraph.find_by(title: "SLI").nil?
  Paragraph.create(title: "SLI",
    description: "✓Siberian Law Institute(Bachelor of law) (August 2014 - July 2018) \n \n" + 
      "->Court appearance \n \n" + 
      "->Conflictology \n \n" + 
      "->Information Security \n \n" + 
      "->English")
  puts "=====SLI have been created====="
end

if Paragraph.find_by(title: "Webdesign").nil?
  Paragraph.create(title: "Webdesign",
    description: "Completed the course of web-design (February 2010 - November 2012) \n \n" + 
      "->HTML \n \n" + 
      "->CSS \n \n" + 
      "->Javascript \n \n" + 
      "->PHP")
  puts "=====Webdesign have been created====="
end

if Paragraph.find_by(title: "About").nil?
  Paragraph.create(title: "About",
    description: "Telegram bot is open to GraphQL queries used by Hasura, he also performs api" +
      " requests himself and updates the existing database depending on the responses." +
      " The bot also has a number of applications and games written in Ruby.")
  puts "=====About have been created====="
end

if Paragraph.find_by(title: "About investment game").nil?
  Paragraph.create(title: "About investment game",
    description: "The game allows you to create capital by buying and selling shares." + 
    "The historical value of the shares was created by making an API request to the YH Finance Complete server." + 
    "The stock trading period is from 2013 to 2022. You only have $1000, try to create a capital of $10000000.")
  
  puts "=====About investment game have been created====="
end

if Stock.find_by(title: "apple_stock").nil?
  url = URI("https://yh-finance-complete.p.rapidapi.com/yhfhistorical?ticker=AAPL&sdate=2013-01-01&edate=2023-01-01")

  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true

  request = Net::HTTP::Get.new(url)
  request["content-type"] = 'application/octet-stream'
  request["X-RapidAPI-Key"] = 'f1f6ccfda8msh10fb2a9ed01cd0dp13b608jsnfc3a4c06647f'
  request["X-RapidAPI-Host"] = 'yh-finance-complete.p.rapidapi.com'

  response = http.request(request)

  aapl = JSON.parse(response.read_body)

  count = -1

  days_of_year = [0]

  80.times do
    count += 30
    days_of_year << count
  end

  array_of_necessary_data = []

  days_of_year.each do |day|
    array_of_necessary_data << aapl[day]
  end

  if Stock.find_by(title: "apple_stock").nil?
    apple = Stock.create!(
      title: "apple_stock",
      ticker: "AAPL", 
      description: "Apple")
  else
    apple = Stock.find_by(title: "apple_stock")
  end

  if apple.trading_days.empty?
    array_of_necessary_data.each do |trading_day|
      TradingDay.create!(
        date: trading_day["date"],
        open: trading_day["open"],
        close: trading_day["close"],
        adj_close: trading_day["adjClose"],
        stock_id: apple.id)
    end
  else
  end
  
  puts "=====AAPL have been created====="
end

if Stock.find_by(title: "lockheed_stock").nil?
  url = URI("https://yh-finance-complete.p.rapidapi.com/yhfhistorical?ticker=LMT&sdate=2013-01-01&edate=2023-01-01")

  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true

  request = Net::HTTP::Get.new(url)
  request["content-type"] = 'application/octet-stream'
  request["X-RapidAPI-Key"] = 'f1f6ccfda8msh10fb2a9ed01cd0dp13b608jsnfc3a4c06647f'
  request["X-RapidAPI-Host"] = 'yh-finance-complete.p.rapidapi.com'

  response = http.request(request)

  lmt = JSON.parse(response.read_body)

  count = -1

  days_of_year = [0]

  80.times do
    count += 30
    days_of_year << count
  end

  array_of_necessary_data = []

  days_of_year.each do |day|
    array_of_necessary_data << lmt[day]
  end

  if Stock.find_by(title: "lockheed_stock").nil?
    lockheed_martin = Stock.create!(
      title: "lockheed_stock",
      ticker: "LMT", 
      description: "Lockheed Martin")
  else
    lockheed_martin = Stock.find_by(title: "lockheed_stock")
  end

  if lockheed_martin.trading_days.empty?
    array_of_necessary_data.each do |trading_day|
      TradingDay.create!(
        date: trading_day["date"],
        open: trading_day["open"],
        close: trading_day["close"],
        adj_close: trading_day["adjClose"],
        stock_id: lockheed_martin.id)
    end
  else
  end

  puts "=====LMT have been created====="
end

if Stock.find_by(title: "microsoft_stock").nil?
  url = URI("https://yh-finance-complete.p.rapidapi.com/yhfhistorical?ticker=MSFT&sdate=2013-01-01&edate=2023-01-01")

  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true

  request = Net::HTTP::Get.new(url)
  request["content-type"] = 'application/octet-stream'
  request["X-RapidAPI-Key"] = 'f1f6ccfda8msh10fb2a9ed01cd0dp13b608jsnfc3a4c06647f'
  request["X-RapidAPI-Host"] = 'yh-finance-complete.p.rapidapi.com'

  response = http.request(request)

  msft = JSON.parse(response.read_body)

  count = -1

  days_of_year = [0]

  80.times do
    count += 30
    days_of_year << count
  end

  array_of_necessary_data = []

  days_of_year.each do |day|
    array_of_necessary_data << msft[day]
  end

  if Stock.find_by(title: "microsoft_stock").nil?
    microsoft = Stock.create!(
      title: "microsoft_stock",
      ticker: "MSFT", 
      description: "Microsoft")
  else
    microsoft = Stock.find_by(title: "microsoft_stock")
  end

  if microsoft.trading_days.empty?
    array_of_necessary_data.each do |trading_day|
      TradingDay.create!(
        date: trading_day["date"],
        open: trading_day["open"],
        close: trading_day["close"],
        adj_close: trading_day["adjClose"],
        stock_id: microsoft.id)
    end
  else
  end

  puts "=====MSFT have been created====="
end

sleep 60

if Stock.find_by(title: "mcdonald’s_stock").nil?
  url = URI("https://yh-finance-complete.p.rapidapi.com/yhfhistorical?ticker=MCD&sdate=2013-01-01&edate=2023-01-01")

  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true

  request = Net::HTTP::Get.new(url)
  request["content-type"] = 'application/octet-stream'
  request["X-RapidAPI-Key"] = 'f1f6ccfda8msh10fb2a9ed01cd0dp13b608jsnfc3a4c06647f'
  request["X-RapidAPI-Host"] = 'yh-finance-complete.p.rapidapi.com'

  response = http.request(request)

  p mcd = JSON.parse(response.read_body)

  count = -1

  days_of_year = [0]

  80.times do
    count += 30
    days_of_year << count
  end

  array_of_necessary_data = []

  days_of_year.each do |day|
    array_of_necessary_data << mcd[day]
  end

  p array_of_necessary_data

  if Stock.find_by(title: "mcdonald’s_stock").nil?
    mcdonalds = Stock.create!(
      title: "mcdonald’s_stock",
      ticker: "MCD", 
      description: "McDonald’s")
  else
    mcdonalds = Stock.find_by(title: "mcdonald’s_stock")
  end

  if mcdonalds.trading_days.empty?
    array_of_necessary_data.each do |trading_day|
      TradingDay.create!(
        date: trading_day["date"],
        open: trading_day["open"],
        close: trading_day["close"],
        adj_close: trading_day["adjClose"],
        stock_id: mcdonalds.id)
    end
  else
  end

  puts "=====MCD have been created====="
end

if Stock.find_by(title: "BAC_stock").nil?
  url = URI("https://yh-finance-complete.p.rapidapi.com/yhfhistorical?ticker=BAC&sdate=2013-01-01&edate=2023-01-01")

  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true

  request = Net::HTTP::Get.new(url)
  request["content-type"] = 'application/octet-stream'
  request["X-RapidAPI-Key"] = 'f1f6ccfda8msh10fb2a9ed01cd0dp13b608jsnfc3a4c06647f'
  request["X-RapidAPI-Host"] = 'yh-finance-complete.p.rapidapi.com'

  response = http.request(request)

  bac = JSON.parse(response.read_body)

  count = -1

  days_of_year = [0]

  80.times do
    count += 30
    days_of_year << count
  end

  array_of_necessary_data = []

  days_of_year.each do |day|
    array_of_necessary_data << bac[day]
  end

  if Stock.find_by(title: "BAC_stock").nil?
    bank_of_america = Stock.create!(
      title: "BAC_stock",
      ticker: "BAC", 
      description: "Bank of America Corp")
  else
    bank_of_america = Stock.find_by(title: "BAC_stock")
  end

  if bank_of_america.trading_days.empty?
    array_of_necessary_data.each do |trading_day|
      TradingDay.create!(
        date: trading_day["date"],
        open: trading_day["open"],
        close: trading_day["close"],
        adj_close: trading_day["adjClose"],
        stock_id: bank_of_america.id)
    end
  else
  end

  puts "=====BAC have been created====="
end