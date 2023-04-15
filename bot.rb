require File.expand_path('config/environment', __dir__)

token = ENV.fetch("DATABASE_URL")
p token