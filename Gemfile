source 'https://rubygems.org'

ruby '1.9.3'
gem 'rails', '~>3.2.13'
gem 'mongoid'
gem 'bson_ext'
gem 'thin'
gem 'rufus-scheduler'



# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'


  gem 'therubyracer', :platforms => :ruby
  gem 'less-rails'
  gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'


group :development, :test do
  gem 'debugger'
end

group :test do
#  gem 'rspec-rails'
  gem 'minitest-rails'
#  gem 'cucumber-rails'
  gem 'database_cleaner'
end
