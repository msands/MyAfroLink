source 'https://rubygems.org'
ruby '2.2.2'

gem 'rails', '4.2.1'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails', '~> 4.0.3'
gem 'turbolinks', '~> 2.5.3'
gem 'jbuilder', '~> 2.0'
gem 'slim', '~> 3.0.3'
gem 'slim-rails', '~> 3.0.1'
gem 'bcrypt', '~> 3.1.10'
gem 'bootstrap-sass', '~> 3.3.4.1'

# Building simple forms
gem 'simple_form', '~> 3.1.0'

# User profile photo upload
gem 'paperclip', '~> 4.2.1'
gem 'aws-sdk', '< 2.0'

# User authentication
gem 'devise', '~> 3.4.1'
gem 'omniauth-facebook', '~> 2.0.1'
gem 'omniauth-google-oauth2', '~> 0.2.6'

# Search
gem 'searchkick', '~> 0.9.0'
gem 'twitter-typeahead-rails', '~> 0.10.5'

# Setting environment variables
gem 'figaro', '~> 1.1.1'

# Adds ability to rate business profiles
gem 'ratyrate'

# Fix cookie overflow
gem 'activerecord-session_store', github: 'rails/activerecord-session_store'

# Use same database for prod and dev
gem 'pg', '~> 0.18.1'

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring', '~> 1.3.4'
  gem 'better_errors', '~> 2.1.1'
end

group :test do
  gem 'minitest-reporters', '1.0.11'
  gem 'mini_backtrace', '0.1.3'
  gem 'guard-minitest', '2.4.4'
end

group :production do
  gem 'rails_12factor', '~> 0.0.3'
  gem 'unicorn', '~> 4.9.0'
end

group :doc do
  gem 'sdoc', '~> 0.4.0'
end
