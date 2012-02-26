source "http://rubygems.org"

# Declare your gem's dependencies in edge-layouts.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec


# jquery-rails is used by the dummy application
gem "jquery-rails"

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'zurb-foundation'
end


group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'spork', '~> 0.9.0.rc'
  gem 'capybara', :git => 'https://github.com/jnicklas/capybara.git'
  gem 'launchy'
  gem 'watchr'
  gem 'execjs'
  gem 'therubyracer'
  gem 'simplecov', :require => false
end