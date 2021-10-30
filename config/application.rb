require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Airchef
  class Application < Rails::Application
    config.generators do |generate|
      generate.assets false
      generate.helper false
      generate.system_tests false
      generate.test_framework :rspec
    end

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
  end
end
