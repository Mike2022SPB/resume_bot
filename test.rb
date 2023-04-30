require File.expand_path('config/environment', __dir__)
require 'uri'
require 'net/http'
require 'json'

message_data = "apple_stock"

p message_data = message_data.gsub("_", " ").capitalize
