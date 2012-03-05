source :rubygems

gem 'rails', '3.2.2'

# Server
gem 'thin'

# View
gem 'haml'
gem 'jquery-rails'

# Assets
group :assets do
  gem 'sass-rails'
  gem 'bootstrap-sass'
  gem 'coffee-rails'
  gem 'uglifier'
end

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3'
  gem 'foreman'
  gem 'guard'
  gem 'rspec-rails'
  gem 'jasminerice'
end

group :test do
  gem 'spork'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'simplecov', require: false

  # Guards
  gem 'guard-process'
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'guard-jasmine'

  # Guard support
  gem 'rb-fsevent'
  gem 'ruby_gntp'
end
