require File.expand_path('config/environment', __dir__)
require 'uri'
require 'net/http'
require 'json'

# =============
puts comment = <<~COMMENT

  Метод find_by_sql: ActiveRecord предоставляет метод find_by_sql, 
  который позволяет выполнять кастомные SQL-запросы 
  и возвращать результаты в виде объектов ActiveRecord.
  
  sql_1 = "SELECT * FROM profiles WHERE age > 35"

  profiles = Profile.find_by_sql(sql)

  получим:
COMMENT

sql_1 = "SELECT * FROM profiles WHERE age > 35"

profiles = Profile.find_by_sql(sql_1)

profiles.each do |profile|
  puts "profile.id: #{profile.id} profile.name: #{profile.name} profile.age: #{profile.age}"
end

# =============

puts comment = <<~COMMENT

  Метод connection.execute: Метод execute доступен
  через объект соединения (connection) и позволяет
  выполнять SQL-запросы и получать результаты в
  виде набора данных.

  sql_2 = "SELECT * FROM profiles WHERE age > 45"

  profiles = ActiveRecord::Base.connection.execute(sql_2)

  получим:
COMMENT

sql_2 = "SELECT * FROM profiles WHERE age > 45"
  
profiles = ActiveRecord::Base.connection.execute(sql_2)

profiles.each do |profile|
  puts "profile.id: #{profile["id"]} profile.name: #{profile["name"]} profile.age: #{profile["age"]}"
end

# =============
