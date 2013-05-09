source 'https://rubygems.org'

ruby '1.9.3'
gem 'rails', '3.2.13'
gem 'mongoid'
gem 'bson_ext'
gem 'unicorn'
gem 'parameterize'



# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby
  gem 'less-rails'
  gem "twitter-bootstrap-rails"

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'


# Deploy with Capistrano
# gem 'capistrano'

group :development, :test do
  gem 'debugger'
end

group :test do
#  gem 'rspec-rails'
  gem 'minitest-rails'
  gem 'minitest-rails-capybara'
#  gem 'cucumber-rails'
  gem 'database_cleaner'
end
