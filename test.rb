require File.expand_path('config/environment', __dir__)
require 'uri'
require 'net/http'
require 'json'

# url = URI("https://yh-finance-complete.p.rapidapi.com/yhfhistorical?ticker=BMW&sdate=2013-01-01&edate=2023-01-01")

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true

# request = Net::HTTP::Get.new(url)
# request["content-type"] = 'application/octet-stream'
# request["X-RapidAPI-Key"] = 'f1f6ccfda8msh10fb2a9ed01cd0dp13b608jsnfc3a4c06647f'
# request["X-RapidAPI-Host"] = 'yh-finance-complete.p.rapidapi.com'

# response = http.request(request)

# lmt = JSON.parse(response.read_body)

# count = -1

# days_of_year = [0]

# 80.times do
#   count += 30
#   days_of_year << count
# end

# p array_of_necessary_data = []

# days_of_year.each do |day|
#   array_of_necessary_data << lmt[day]
# end

# p array_of_necessary_data
