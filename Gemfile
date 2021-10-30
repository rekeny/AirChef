# frozen_string_literal: true

source 'https://rubygems.org'

# Load Ruby version from `.ruby-version`
ruby File.read('.ruby-version').chomp

# Enforce using of `https` for GitHub
git_source(:github) { |repo_name| "https://github.com/#{repo_name}.git" }

# Core
gem 'rails', '~> 6.0.3'
gem 'puma', '~> 4.1'
gem 'pg', '>= 0.18', '< 2.0'

# Assets
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'autoprefixer-rails'
gem 'font-awesome-sass'

# API
gem 'jbuilder', '~> 2.7'

# Authentification
gem 'devise', '~> 4.8'

# File uploading and processing
gem 'image_processing', '~> 1.2'
gem 'cloudinary', '~> 1.12.0'

# Other
gem 'geocoder'
gem 'faker'
gem 'simple_form'
gem 'pg_search', '~> 2.3.0'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]





group :development, :test do
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails', '~> 2.7'

  # Code Analytics
  gem 'memory_profiler', '~> 0.9.14'
  gem 'bullet', '~> 6.1'
  gem 'brakeman', '~> 5.0',             require: false
  gem 'bundler-audit', '~> 0.7',        require: false
  gem 'rubocop', '~> 0.86',             require: false
  gem 'rubocop-rails', '~> 2.6',        require: false
  gem 'rubocop-rspec', '~> 1.40',       require: false
  gem 'rubocop-performance', '~> 1.7',  require: false
end

group :development do
  # Core
  gem 'listen', '~> 3.2'
  gem 'spring', '~> 2.1'
  gem 'spring-watcher-listen', '~> 2.0'

  # Helpers
  gem 'better_errors', '~> 2.5'
  gem 'binding_of_caller', '~> 0.8.0'
  gem 'web-console', '~> 4.0'
  gem 'method_source', '~> 1.0'

  # Pre-commit hooks
  gem 'overcommit', '~> 0.54'
end

group :test do
  # Core
  gem 'rspec-rails', '~> 4.0'
  gem 'shoulda-matchers', '~> 4.2'
  gem 'poltergeist', '~> 1.18'
  gem 'capybara', '~> 3.35'
  gem 'capybara-screenshot', '~> 1.0'

  # Mocking
  gem 'webmock', '~> 3.8'

  # Helpers
  gem 'database_cleaner', '~> 1.7'
  gem 'factory_bot_rails', '~> 6.0'
  gem 'ffaker', '~> 2.18'

  # Other
  gem 'simplecov', '~> 0.18.5', require: false
  gem 'test-prof', '~> 0.11', require: false
end

