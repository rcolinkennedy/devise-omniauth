source 'https://rubygems.org'
ruby '2.1.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.4'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Turbolinks for some JS
gem 'turbolinks', '~> 2.2.1'

# Foundation 5
gem 'foundation-rails', '5.1.1.0'

# Masonry, via gem
gem 'masonry-rails', '~> 0.2.1'

# Use jquery as the JavaScript library
gem 'jquery-rails', '3.1.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Devise for Authentication
gem 'devise', '~> 3.2.4'

# Authentication tools
# gem 'omniauth', '~> 1.2.1'
# gem 'omniauth-oauth', '~> 1.0.1'
gem 'omniauth-twitter', '1.0.1'

# Use Figaro to stash keys for dev and deployment
gem 'figaro', '~> 0.7.0'

# Set up development group
group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '1.3.8'

  # Add byebug for debugging
  gem 'byebug', '2.6.0'

  # Add RSpec for rails
  gem 'rspec-rails', '2.13.1'
  # Add Guard to automate testing
  gem 'guard-rspec', '2.5.0'
  # Add Spork to speed up testing
  gem 'spork-rails', '4.0.0'
  gem 'guard-spork', '1.5.0'
  gem 'childprocess', '0.3.9'

end

group :development do
  # Use live reload
  gem 'guard-livereload', require: false

  # Use Letter Opener to build transactional email
  gem 'letter_opener'

  # Add seed_dump to convert demo data into seeds.rb file
  gem 'seed_dump'
  
  # Rename the app
  # gem 'rename'
end

group :test do
  # capybara has dependencies on selenium
  gem 'selenium-webdriver', '2.35.1'
  # Use capybara for simulating user interactions
  gem 'capybara', '2.1.0'

  # Use FactoryGirl for factories
  gem 'factory_girl_rails', '4.4.1'

  # Webmock for mocking in test
  gem 'webmock', '~> 1.17.4'
end

# Set up Production group to test live on Heroku
group :production do
  # Use PostgreSQL on in prod for deployment to Heroku
  gem 'pg', '0.15.1'

  # To enable features such as static asset serving and logging on Heroku
  gem 'rails_12factor', '0.0.2'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
