source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'pg'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'redis', '~> 4.0'
gem 'telegram-bot-ruby'

gem 'image_processing', '~> 1.2'

gem 'bootsnap', '>= 1.4.4', require: false

gem 'sidekiq', '~> 6.2'
gem 'devise', '~> 4.8'
gem 'devise_token_auth', '~> 1.1'
gem 'graphql', '~> 1.12'
gem 'graphql_playground-rails'
gem "omniauth", "~> 2.0"
gem "omniauth-rails_csrf_protection", "~> 1.0"
gem 'omniauth-github'
gem 'hasura_handler', git: 'https://github.com/woohoou/HasuraHandler.git'
gem "graphql-client", "~> 0.17.0"
gem 'active_model_otp', '~> 2.2'
gem 'twilio-ruby', '~> 5.54'
gem "onesignal-ruby", "~> 0.5.0"
gem "acts_as_paranoid", "~> 0.7.3"
gem "cancancan", "~> 3.3"
gem "activeadmin", "~> 2.9"
gem "aldous", "~> 1.1"
gem "audited", "~> 5.0"
gem "doorkeeper", "~> 5.5"
gem "doorkeeper-grants_assertion", "~> 0.3.1"
gem "octokit", "~> 4.21"
gem "active_model_serializers", "~> 0.10.12"
gem 'pg_search'
gem 'telegram-bot-ruby'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]  
  gem 'dotenv-rails', '~> 2.7'
  gem 'rspec-rails', '~> 5.0'
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'graphiql-rails', group: :development
