# source 'https://rubygems.org'
source 'https://gems.ruby-china.com'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# ruby "2.5.1"
ruby File.read(File.expand_path('../.ruby-version', __FILE__)).chomp

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
gem 'bcrypt'
gem 'will_paginate', '>= 3.1.0'
gem 'will_paginate-bootstrap'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'nokogiri'

gem 'rcodetools'

# bootstrap https://medium.freecodecamp.org/add-bootstrap-to-your-ruby-on-rails-project-8d76d70d0e3b
gem 'bootstrap-sass'
gem 'autoprefixer-rails'
gem 'jquery-rails'
gem 'paranoia', "~> 2.2"

group :development, :test do
  gem 'selenium-webdriver'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # gem 'pry'
  # For debugger
  gem "pry-rails", "~> 0.3.2"
  # gem 'pry-doc', "~> 0.8.0"

  # For ruby2.0 use byebug instead of debugger
  gem 'pry-byebug', "~> 2.0.0"

  gem 'factory_bot_rails'
  gem 'database_cleaner'
  gem 'spring-commands-rspec', '~> 1.0.2'

  gem 'faker'

# OS X specific gems
group :darwin do
  gem 'growl'
end

  # Speedup Test::Unit + RSpec + Cucumber + Spinach by running parallel on multiple CPU cores.
  gem 'parallel_tests'
  gem "rspec-rails"
  gem "zeus-parallel_tests"
end

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  # Add comments in front of Model
  gem 'annotate'
end

group :test do
  # gem 'rails-controller-testing'
  # gem 'minitest-reporters'
  # gem 'mini_backtrace'
  # gem 'guard-minitest'
  gem 'guard'
  gem 'guard-rspec'

  gem "launchy", "~> 2.4.2"
  gem 'webmock'
  gem 'shoulda-matchers'
  gem "capybara"
  gem "rb-fsevent"
  gem "zeus"
end

group :development do
  gem 'capistrano',         require: false
  gem 'capistrano-rvm',     require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma',   require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
