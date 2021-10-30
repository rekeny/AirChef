# frozen_string_literal: true

require 'simplecov'

SimpleCov.start

require 'dotenv'
Dotenv.load('.env.test')

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)

abort('The Rails environment is running in production mode!') if Rails.env.production?

require_relative 'spec_helper'
require 'rspec/rails'

Dir[Rails.root.join('spec/support/**/*.rb')].sort.each { |f| require f }

RSpec.configure do |config|
  # Configs
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.filter_rails_from_backtrace!
  config.infer_spec_type_from_file_location!

  # Includes
  config.include Warden::Test::Helpers
  config.include ActiveSupport::Testing::TimeHelpers
end
