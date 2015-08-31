source 'https://rubygems.org'

gem 'rails', '4.1.8'
gem 'unicorn'

group :assets do
  gem 'sass-rails',   '~> 4.0.3'
  gem 'coffee-rails', '~> 4.0.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'therubyracer'
end

gem 'casino', '4.0.1'
gem 'casino-ldap_authenticator', '3.0.0'
gem 'casino-activerecord_authenticator', '4.0.1'
gem 'casino-moped_authenticator', :git => 'https://github.com/renemeza/casino-moped_authenticator.git'

gem 'http_accept_language', '~> 2.0'

gem 'whenever', :require => false

# For user database
gem 'mongoid', '~> 4'
gem 'devise', '~> 3.5.1'
gem 'activerecord-session_store'

group :sqlite do
  gem 'sqlite3'
end

group :mysql do
  gem 'mysql2'
end

group :postgres do
  gem 'pg'
end

gem 'capistrano'
gem 'capistrano-rvm', require: false
gem 'capistrano-rails', require: false
gem 'capistrano-bundler', require: false
gem 'capistrano3-puma', require: false

group :development do

  gem 'foreman'
end

gem 'puma'