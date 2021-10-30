# frozen_string_literal: true

MoneyRails.configure do |config|
  config.locale_backend = :currency
  config.default_currency = :eur
  config.rounding_mode = BigDecimal::ROUND_HALF_EVEN
  config.default_format = { no_cents_if_whole: nil }
end
