source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'


# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# User system
gem 'devise', '3.0.0'

# MongoDB
gem "mongoid", github: 'mongoid/mongoid'

# Bootstrap
gem 'anjlab-bootstrap-rails', '2.0.3.2', require: 'bootstrap-rails'

# 三方平台 OAuth 验证登陆
gem "omniauth", "~> 1.0.1"
gem "omniauth-github", "~> 1.1.0"

#form
gem 'simple_form'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end


group :development, :test do
	gem 'rspec-rails', '~> 2.13.2'
	gem 'factory_girl_rails'
	gem 'capistrano', '2.9.0', require: false
	gem 'database_cleaner'
	gem "capybara", "~> 0.4.1"
	gem "mongoid-rspec"
	gem 'cucumber-rails', :require => false
end

group :production do
  gem 'unicorn'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
