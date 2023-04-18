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
      "7. Working with sidekiq workers, a non-relational Redis database.")
  puts "=====APCGS was created====="
end