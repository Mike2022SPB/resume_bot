# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
  
  puts "=====Summary was created====="
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
  puts "=====IDT was created====="
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
  puts "=====APCGS was created====="
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
  puts "=====Feniks consulting was created====="
end

if Paragraph.find_by(title: "Contacts").nil?
  Paragraph.create(title: "Contacts",
    description: "Location: I'm digital nomad, but currently live in Georgia, Batumi. \n \n" + 
      "E-mail: mike.godunoff2020@gmail.com \n \n" +
      "Telegram: https://t.me/mike_godunoff \n \n" + 
      "Github: https://github.com/Mike2022SPB; \n \n" +
      "Linkedin: https://www.linkedin.com/in/mike-godunoff/")
  puts "=====Contacts were created====="
end
