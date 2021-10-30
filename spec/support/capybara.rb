# frozen_string_literal: true

require 'capybara/rspec'
require 'capybara/poltergeist'

Capybara.server = :puma
Capybara.current_driver = :poltergeist
Capybara.javascript_driver = :poltergeist

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(
    app,
    timeout: 120,
    window_size: [1366, 768],
    phantomjs_options: ['--load-images=no', '--ignore-ssl-errors=yes', '--ssl-protocol=any']
  )
end
