source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.5'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'pry'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'mailcatcher'
  gem 'shoulda-matchers'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # RSpec driven API testing framework
  gem 'airborne'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Templating and Design
gem 'haml-rails'
gem 'bootstrap-sass'
gem 'jquery-rails'

# API
gem 'grape'
gem 'grape_on_rails_routes' # rake task to expose grape api routes
gem 'grape-entity'

# Uploader
gem "paperclip", "~> 5.2.0"

# Trailblazer
gem "trailblazer", '2.0.2'
gem "trailblazer-rails", '1.0.2'
gem "trailblazer-cells", '0.0.3'
gem "cells-rails", '0.0.6'
gem "cells-haml", '0.0.10'
